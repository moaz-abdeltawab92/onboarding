import '../../../../core/routing/route_export.dart';
import 'package:onboarding_2/l10n/localizations_extension.dart';

class FileUploadWidget extends StatelessWidget {
  final VoidCallback onUpload;

  const FileUploadWidget({super.key, required this.onUpload});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onUpload,
      icon: const Icon(Icons.upload_file),
      label: Text(context.loc.button_next),
    );
  }
}
