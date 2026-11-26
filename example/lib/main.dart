import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:stability_sdk/stability_sdk.dart';

import 'demo_client.dart';

/// Pass your key with `--dart-define=STABILITY_API_KEY=sk-...`. Without one,
/// the app runs in demo mode.
///
/// This is fine for trying the SDK, but don't ship an app with your key in
/// it. Call the API from your own backend instead.
const apiKey = String.fromEnvironment('STABILITY_API_KEY');

/// Opens a tab and runs its action on launch. Used for screenshots.
const autorun = String.fromEnvironment('AUTORUN');

bool get demoMode => apiKey.isEmpty;

void main() {
  final client = demoMode
      ? StabilityClient(apiKey: 'demo', httpClient: DemoClient())
      : StabilityClient(apiKey: apiKey, clientId: 'stability_sdk_example');
  runApp(ExampleApp(client: client));
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.client});

  final StabilityClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stability SDK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: const Color(0xFF7C3AED)),
      home: HomePage(client: client),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.client});

  final StabilityClient client;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _tab = autorun == 'edit' ? 1 : 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stability SDK')),
      body: Column(
        children: [
          if (demoMode) const _DemoBanner(),
          Expanded(
            child: IndexedStack(
              index: _tab,
              children: [
                GenerateTab(client: widget.client),
                EditTab(client: widget.client),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _tab,
        onDestinationSelected: (i) => setState(() => _tab = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.auto_awesome),
            label: 'Generate',
          ),
          NavigationDestination(icon: Icon(Icons.edit), label: 'Edit'),
        ],
      ),
    );
  }
}

class _DemoBanner extends StatelessWidget {
  const _DemoBanner();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      color: colors.tertiaryContainer,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        'Demo mode. No API key is set, so images are saved samples from '
        'earlier generations, not live results.',
        style: TextStyle(color: colors.onTertiaryContainer),
      ),
    );
  }
}

enum Service { core, ultra, sd35 }

class GenerateTab extends StatefulWidget {
  const GenerateTab({super.key, required this.client});

  final StabilityClient client;

  @override
  State<GenerateTab> createState() => _GenerateTabState();
}

class _GenerateTabState extends State<GenerateTab> {
  final _prompt = TextEditingController(
    text:
        'An oil painting of a dog, realistic, in the style of Leonardo da '
        'Vinci',
  );
  var _service = Service.core;
  var _aspectRatio = ImageAspectRatio.square;
  StylePreset? _style;
  GeneratedImage? _image;
  var _loading = false;

  @override
  void initState() {
    super.initState();
    if (autorun == 'generate') {
      WidgetsBinding.instance.addPostFrameCallback((_) => _generate());
    }
  }

  @override
  void dispose() {
    _prompt.dispose();
    super.dispose();
  }

  Future<void> _generate() async {
    setState(() => _loading = true);
    try {
      final generate = widget.client.generate;
      final image = await switch (_service) {
        Service.core => generate.core(
          prompt: _prompt.text,
          aspectRatio: _aspectRatio,
          stylePreset: _style,
        ),
        Service.ultra => generate.ultra(
          prompt: _prompt.text,
          aspectRatio: _aspectRatio,
          stylePreset: _style,
        ),
        Service.sd35 => generate.sd35(
          prompt: _prompt.text,
          model: Sd35Model.large,
          aspectRatio: _aspectRatio,
          stylePreset: _style,
        ),
      };
      setState(() => _image = image);
    } on StabilityException catch (e) {
      _showError(e.errors.isEmpty ? e.toString() : e.errors.join('\n'));
    } on ArgumentError catch (e) {
      _showError('${e.message}');
    } on http.ClientException {
      _showError('Could not reach Stability AI. Check your connection.');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = _image;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        TextField(
          controller: _prompt,
          minLines: 2,
          maxLines: 4,
          decoration: const InputDecoration(
            labelText: 'Prompt',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        SegmentedButton<Service>(
          showSelectedIcon: false,
          segments: const [
            ButtonSegment(value: Service.core, label: Text('Core')),
            ButtonSegment(value: Service.ultra, label: Text('Ultra')),
            ButtonSegment(value: Service.sd35, label: Text('SD 3.5')),
          ],
          selected: {_service},
          onSelectionChanged: (s) => setState(() => _service = s.first),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: DropdownButtonFormField<ImageAspectRatio>(
                initialValue: _aspectRatio,
                isExpanded: true,
                decoration: const InputDecoration(
                  labelText: 'Aspect ratio',
                  border: OutlineInputBorder(),
                ),
                items: [
                  for (final r in ImageAspectRatio.values)
                    DropdownMenuItem(value: r, child: Text(r.value)),
                ],
                onChanged: (r) => setState(() => _aspectRatio = r!),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: DropdownButtonFormField<StylePreset?>(
                initialValue: _style,
                isExpanded: true,
                decoration: const InputDecoration(
                  labelText: 'Style',
                  border: OutlineInputBorder(),
                ),
                items: [
                  const DropdownMenuItem(value: null, child: Text('None')),
                  for (final s in StylePreset.values)
                    DropdownMenuItem(
                      value: s,
                      child: Text(s.value, overflow: TextOverflow.ellipsis),
                    ),
                ],
                onChanged: (s) => setState(() => _style = s),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: _loading ? null : _generate,
          icon: _loading
              ? const SizedBox.square(
                  dimension: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.auto_awesome),
          label: Text(_loading ? 'Generating...' : 'Generate'),
        ),
        if (image != null) ...[
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.memory(image.bytes, gaplessPlayback: true),
          ),
          const SizedBox(height: 8),
          Text(
            [
              image.mimeType,
              if (image.seed != null) 'seed ${image.seed}',
              if (image.isFiltered) 'blurred by the content filter',
            ].join(' · '),
            style: theme.textTheme.bodySmall,
          ),
        ],
      ],
    );
  }
}

enum EditAction {
  removeBackground('Remove background'),
  searchAndReplace('Replace the dog with a fox'),
  outpaint('Extend left and right'),
  upscale('Fast upscale, 4x');

  const EditAction(this.label);

  final String label;
}

class EditTab extends StatefulWidget {
  const EditTab({super.key, required this.client});

  final StabilityClient client;

  @override
  State<EditTab> createState() => _EditTabState();
}

class _EditTabState extends State<EditTab> {
  static const _input = 'assets/samples/dog.png';

  var _action = EditAction.removeBackground;
  GeneratedImage? _result;
  var _loading = false;

  Future<void> _run() async {
    setState(() => _loading = true);
    try {
      final input = (await rootBundle.load(_input)).buffer.asUint8List();
      final client = widget.client;
      final result = await switch (_action) {
        EditAction.removeBackground => client.edit.removeBackground(
          image: input,
        ),
        EditAction.searchAndReplace => client.edit.searchAndReplace(
          image: input,
          searchPrompt: 'dog',
          prompt: 'a red fox, oil painting',
        ),
        EditAction.outpaint => client.edit.outpaint(
          image: input,
          left: 256,
          right: 256,
        ),
        EditAction.upscale => client.upscale.fast(image: input),
      };
      setState(() => _result = result);
    } on StabilityException catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.errors.isEmpty ? '$e' : e.errors.join('\n'))),
      );
    } on http.ClientException {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not reach Stability AI. Check your connection.'),
        ),
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final result = _result;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Input', style: theme.textTheme.titleSmall),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(_input, height: 200, fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        RadioGroup<EditAction>(
          groupValue: _action,
          onChanged: (a) => setState(() => _action = a!),
          child: Column(
            children: [
              for (final action in EditAction.values)
                RadioListTile<EditAction>(
                  value: action,
                  title: Text(action.label),
                  contentPadding: EdgeInsets.zero,
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        if (demoMode)
          Text(
            'Editing needs an API key. Run the example with '
            '--dart-define=STABILITY_API_KEY=your-key.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          )
        else
          FilledButton.icon(
            onPressed: _loading ? null : _run,
            icon: const Icon(Icons.edit),
            label: Text(_loading ? 'Working...' : 'Run'),
          ),
        if (result != null) ...[
          const SizedBox(height: 16),
          Text('Result', style: theme.textTheme.titleSmall),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.memory(result.bytes),
          ),
        ],
      ],
    );
  }
}
