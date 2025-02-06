// import 'package:get/get.dart';
// import 'package:local_gen_ai/core/utils/logs.dart';
// import 'package:local_gen_ai/widgets/snackbar/custom_snackbar.dart';
// import '../../features/ai_model_management/controllers/ai_model_controller.dart';
// import '../../features/ai_model_management/services/download_service.dart';
// import '../../features/offline_storage/services/sqflite_service.dart';
// import '../features/ai_model_management/controllers/download_manager.dart';
//
// class InitialBinding extends Bindings {
//   @override
//   Future<void> dependencies() async {
//     try {
//       // Initialize services as singletons
//       final databaseService = Get.put<DatabaseService>(DatabaseService(), permanent: true);
//       Get.put<DownloadService>(DownloadService(), permanent: true);
//
//       // Initialize database
//       await databaseService.init();
//
//       // Initialize controller after services are ready
//       Get.put<AIModelController>(
//         AIModelController(databaseService,),
//         permanent: true,
//       );
//
//       Get.put(
//           DownloadController(),
//           permanent: true
//       );
//
//
//     } catch (error) {
//       DevLogs.logError('Binding initialization error: $error');
//
//       CustomSnackBar.showErrorSnackbar(message: 'Failed to initialize dependencies: $error');
//
//       rethrow;
//     }
//   }
// }
