///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FinishReason extends $pb.ProtobufEnum {
  static const FinishReason NULL = FinishReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NULL');
  static const FinishReason LENGTH = FinishReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LENGTH');
  static const FinishReason STOP = FinishReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOP');
  static const FinishReason ERROR = FinishReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const FinishReason FILTER = FinishReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILTER');

  static const $core.List<FinishReason> values = <FinishReason> [
    NULL,
    LENGTH,
    STOP,
    ERROR,
    FILTER,
  ];

  static final $core.Map<$core.int, FinishReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FinishReason? valueOf($core.int value) => _byValue[value];

  const FinishReason._($core.int v, $core.String n) : super(v, n);
}

class ArtifactType extends $pb.ProtobufEnum {
  static const ArtifactType ARTIFACT_NONE = ArtifactType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_NONE');
  static const ArtifactType ARTIFACT_IMAGE = ArtifactType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_IMAGE');
  static const ArtifactType ARTIFACT_VIDEO = ArtifactType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_VIDEO');
  static const ArtifactType ARTIFACT_TEXT = ArtifactType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_TEXT');
  static const ArtifactType ARTIFACT_TOKENS = ArtifactType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_TOKENS');
  static const ArtifactType ARTIFACT_EMBEDDING = ArtifactType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_EMBEDDING');
  static const ArtifactType ARTIFACT_CLASSIFICATIONS = ArtifactType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_CLASSIFICATIONS');
  static const ArtifactType ARTIFACT_MASK = ArtifactType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_MASK');
  static const ArtifactType ARTIFACT_LATENT = ArtifactType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_LATENT');
  static const ArtifactType ARTIFACT_TENSOR = ArtifactType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_TENSOR');

  static const $core.List<ArtifactType> values = <ArtifactType> [
    ARTIFACT_NONE,
    ARTIFACT_IMAGE,
    ARTIFACT_VIDEO,
    ARTIFACT_TEXT,
    ARTIFACT_TOKENS,
    ARTIFACT_EMBEDDING,
    ARTIFACT_CLASSIFICATIONS,
    ARTIFACT_MASK,
    ARTIFACT_LATENT,
    ARTIFACT_TENSOR,
  ];

  static final $core.Map<$core.int, ArtifactType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ArtifactType? valueOf($core.int value) => _byValue[value];

  const ArtifactType._($core.int v, $core.String n) : super(v, n);
}

class MaskedAreaInit extends $pb.ProtobufEnum {
  static const MaskedAreaInit MASKED_AREA_INIT_ZERO = MaskedAreaInit._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MASKED_AREA_INIT_ZERO');
  static const MaskedAreaInit MASKED_AREA_INIT_RANDOM = MaskedAreaInit._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MASKED_AREA_INIT_RANDOM');
  static const MaskedAreaInit MASKED_AREA_INIT_ORIGINAL = MaskedAreaInit._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MASKED_AREA_INIT_ORIGINAL');

  static const $core.List<MaskedAreaInit> values = <MaskedAreaInit> [
    MASKED_AREA_INIT_ZERO,
    MASKED_AREA_INIT_RANDOM,
    MASKED_AREA_INIT_ORIGINAL,
  ];

  static final $core.Map<$core.int, MaskedAreaInit> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MaskedAreaInit? valueOf($core.int value) => _byValue[value];

  const MaskedAreaInit._($core.int v, $core.String n) : super(v, n);
}

class WeightMethod extends $pb.ProtobufEnum {
  static const WeightMethod TEXT_ENCODER = WeightMethod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT_ENCODER');
  static const WeightMethod CROSS_ATTENTION = WeightMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CROSS_ATTENTION');

  static const $core.List<WeightMethod> values = <WeightMethod> [
    TEXT_ENCODER,
    CROSS_ATTENTION,
  ];

  static final $core.Map<$core.int, WeightMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WeightMethod? valueOf($core.int value) => _byValue[value];

  const WeightMethod._($core.int v, $core.String n) : super(v, n);
}

class DiffusionSampler extends $pb.ProtobufEnum {
  static const DiffusionSampler SAMPLER_DDIM = DiffusionSampler._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_DDIM');
  static const DiffusionSampler SAMPLER_DDPM = DiffusionSampler._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_DDPM');
  static const DiffusionSampler SAMPLER_K_EULER = DiffusionSampler._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_EULER');
  static const DiffusionSampler SAMPLER_K_EULER_ANCESTRAL = DiffusionSampler._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_EULER_ANCESTRAL');
  static const DiffusionSampler SAMPLER_K_HEUN = DiffusionSampler._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_HEUN');
  static const DiffusionSampler SAMPLER_K_DPM_2 = DiffusionSampler._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPM_2');
  static const DiffusionSampler SAMPLER_K_DPM_2_ANCESTRAL = DiffusionSampler._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPM_2_ANCESTRAL');
  static const DiffusionSampler SAMPLER_K_LMS = DiffusionSampler._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_LMS');
  static const DiffusionSampler SAMPLER_K_DPMPP_2S_ANCESTRAL = DiffusionSampler._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPMPP_2S_ANCESTRAL');
  static const DiffusionSampler SAMPLER_K_DPMPP_2M = DiffusionSampler._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPMPP_2M');
  static const DiffusionSampler SAMPLER_K_DPMPP_SDE = DiffusionSampler._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPMPP_SDE');

  static const $core.List<DiffusionSampler> values = <DiffusionSampler> [
    SAMPLER_DDIM,
    SAMPLER_DDPM,
    SAMPLER_K_EULER,
    SAMPLER_K_EULER_ANCESTRAL,
    SAMPLER_K_HEUN,
    SAMPLER_K_DPM_2,
    SAMPLER_K_DPM_2_ANCESTRAL,
    SAMPLER_K_LMS,
    SAMPLER_K_DPMPP_2S_ANCESTRAL,
    SAMPLER_K_DPMPP_2M,
    SAMPLER_K_DPMPP_SDE,
  ];

  static final $core.Map<$core.int, DiffusionSampler> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DiffusionSampler? valueOf($core.int value) => _byValue[value];

  const DiffusionSampler._($core.int v, $core.String n) : super(v, n);
}

class Upscaler extends $pb.ProtobufEnum {
  static const Upscaler UPSCALER_RGB = Upscaler._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPSCALER_RGB');
  static const Upscaler UPSCALER_GFPGAN = Upscaler._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPSCALER_GFPGAN');
  static const Upscaler UPSCALER_ESRGAN = Upscaler._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPSCALER_ESRGAN');

  static const $core.List<Upscaler> values = <Upscaler> [
    UPSCALER_RGB,
    UPSCALER_GFPGAN,
    UPSCALER_ESRGAN,
  ];

  static final $core.Map<$core.int, Upscaler> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Upscaler? valueOf($core.int value) => _byValue[value];

  const Upscaler._($core.int v, $core.String n) : super(v, n);
}

class GuidancePreset extends $pb.ProtobufEnum {
  static const GuidancePreset GUIDANCE_PRESET_NONE = GuidancePreset._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_NONE');
  static const GuidancePreset GUIDANCE_PRESET_SIMPLE = GuidancePreset._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_SIMPLE');
  static const GuidancePreset GUIDANCE_PRESET_FAST_BLUE = GuidancePreset._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_FAST_BLUE');
  static const GuidancePreset GUIDANCE_PRESET_FAST_GREEN = GuidancePreset._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_FAST_GREEN');
  static const GuidancePreset GUIDANCE_PRESET_SLOW = GuidancePreset._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_SLOW');
  static const GuidancePreset GUIDANCE_PRESET_SLOWER = GuidancePreset._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_SLOWER');
  static const GuidancePreset GUIDANCE_PRESET_SLOWEST = GuidancePreset._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_SLOWEST');

  static const $core.List<GuidancePreset> values = <GuidancePreset> [
    GUIDANCE_PRESET_NONE,
    GUIDANCE_PRESET_SIMPLE,
    GUIDANCE_PRESET_FAST_BLUE,
    GUIDANCE_PRESET_FAST_GREEN,
    GUIDANCE_PRESET_SLOW,
    GUIDANCE_PRESET_SLOWER,
    GUIDANCE_PRESET_SLOWEST,
  ];

  static final $core.Map<$core.int, GuidancePreset> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GuidancePreset? valueOf($core.int value) => _byValue[value];

  const GuidancePreset._($core.int v, $core.String n) : super(v, n);
}

class ModelArchitecture extends $pb.ProtobufEnum {
  static const ModelArchitecture MODEL_ARCHITECTURE_NONE = ModelArchitecture._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_NONE');
  static const ModelArchitecture MODEL_ARCHITECTURE_CLIP_VIT = ModelArchitecture._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_CLIP_VIT');
  static const ModelArchitecture MODEL_ARCHITECTURE_CLIP_RESNET = ModelArchitecture._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_CLIP_RESNET');
  static const ModelArchitecture MODEL_ARCHITECTURE_LDM = ModelArchitecture._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_LDM');

  static const $core.List<ModelArchitecture> values = <ModelArchitecture> [
    MODEL_ARCHITECTURE_NONE,
    MODEL_ARCHITECTURE_CLIP_VIT,
    MODEL_ARCHITECTURE_CLIP_RESNET,
    MODEL_ARCHITECTURE_LDM,
  ];

  static final $core.Map<$core.int, ModelArchitecture> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModelArchitecture? valueOf($core.int value) => _byValue[value];

  const ModelArchitecture._($core.int v, $core.String n) : super(v, n);
}

class Action extends $pb.ProtobufEnum {
  static const Action ACTION_PASSTHROUGH = Action._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_PASSTHROUGH');
  static const Action ACTION_REGENERATE_DUPLICATE = Action._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_REGENERATE_DUPLICATE');
  static const Action ACTION_REGENERATE = Action._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_REGENERATE');
  static const Action ACTION_OBFUSCATE_DUPLICATE = Action._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_OBFUSCATE_DUPLICATE');
  static const Action ACTION_OBFUSCATE = Action._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_OBFUSCATE');
  static const Action ACTION_DISCARD = Action._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_DISCARD');

  static const $core.List<Action> values = <Action> [
    ACTION_PASSTHROUGH,
    ACTION_REGENERATE_DUPLICATE,
    ACTION_REGENERATE,
    ACTION_OBFUSCATE_DUPLICATE,
    ACTION_OBFUSCATE,
    ACTION_DISCARD,
  ];

  static final $core.Map<$core.int, Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Action? valueOf($core.int value) => _byValue[value];

  const Action._($core.int v, $core.String n) : super(v, n);
}

class ClassifierMode extends $pb.ProtobufEnum {
  static const ClassifierMode CLSFR_MODE_ZEROSHOT = ClassifierMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLSFR_MODE_ZEROSHOT');
  static const ClassifierMode CLSFR_MODE_MULTICLASS = ClassifierMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLSFR_MODE_MULTICLASS');

  static const $core.List<ClassifierMode> values = <ClassifierMode> [
    CLSFR_MODE_ZEROSHOT,
    CLSFR_MODE_MULTICLASS,
  ];

  static final $core.Map<$core.int, ClassifierMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ClassifierMode? valueOf($core.int value) => _byValue[value];

  const ClassifierMode._($core.int v, $core.String n) : super(v, n);
}

class AssetAction extends $pb.ProtobufEnum {
  static const AssetAction ASSET_PUT = AssetAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_PUT');
  static const AssetAction ASSET_GET = AssetAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_GET');
  static const AssetAction ASSET_DELETE = AssetAction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_DELETE');

  static const $core.List<AssetAction> values = <AssetAction> [
    ASSET_PUT,
    ASSET_GET,
    ASSET_DELETE,
  ];

  static final $core.Map<$core.int, AssetAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AssetAction? valueOf($core.int value) => _byValue[value];

  const AssetAction._($core.int v, $core.String n) : super(v, n);
}

class AssetUse extends $pb.ProtobufEnum {
  static const AssetUse ASSET_USE_UNDEFINED = AssetUse._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_USE_UNDEFINED');
  static const AssetUse ASSET_USE_INPUT = AssetUse._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_USE_INPUT');
  static const AssetUse ASSET_USE_OUTPUT = AssetUse._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_USE_OUTPUT');
  static const AssetUse ASSET_USE_INTERMEDIATE = AssetUse._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_USE_INTERMEDIATE');
  static const AssetUse ASSET_USE_PROJECT = AssetUse._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_USE_PROJECT');

  static const $core.List<AssetUse> values = <AssetUse> [
    ASSET_USE_UNDEFINED,
    ASSET_USE_INPUT,
    ASSET_USE_OUTPUT,
    ASSET_USE_INTERMEDIATE,
    ASSET_USE_PROJECT,
  ];

  static final $core.Map<$core.int, AssetUse> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AssetUse? valueOf($core.int value) => _byValue[value];

  const AssetUse._($core.int v, $core.String n) : super(v, n);
}

class StageAction extends $pb.ProtobufEnum {
  static const StageAction STAGE_ACTION_PASS = StageAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGE_ACTION_PASS');
  static const StageAction STAGE_ACTION_DISCARD = StageAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGE_ACTION_DISCARD');
  static const StageAction STAGE_ACTION_RETURN = StageAction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGE_ACTION_RETURN');

  static const $core.List<StageAction> values = <StageAction> [
    STAGE_ACTION_PASS,
    STAGE_ACTION_DISCARD,
    STAGE_ACTION_RETURN,
  ];

  static final $core.Map<$core.int, StageAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StageAction? valueOf($core.int value) => _byValue[value];

  const StageAction._($core.int v, $core.String n) : super(v, n);
}

