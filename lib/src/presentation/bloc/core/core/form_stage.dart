enum FormStage {
  initial,
  loading,
  success,
  failed,
  common;

  const FormStage();

  bool get isInitial => this == FormStage.initial;
  bool get isLoading => this == FormStage.loading;
  bool get isSuccess => this == FormStage.success;
  bool get isFailed => this == FormStage.failed;
  bool get isCommon => this == FormStage.common;
}
