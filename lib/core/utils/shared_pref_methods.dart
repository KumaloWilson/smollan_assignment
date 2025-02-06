// import 'dart:convert';
// import 'logs.dart';
//
// /// A utility class for caching and retrieving application data using
// /// `SharedPreferences`. This class provides methods to manage onboarding status,
// /// properties, and municipalities.
// class CacheUtils {
//   /// Key for storing onboarding status in the cache.
//   static const _onboardingCacheKey = 'hasSeenOnboarding';
//
//   /// Key for storing in app tutorial status in the cache.
//   static const _hasSeenTutorialCacheKey = 'hasSeenOnboarding';
//
//   /// Key for storing a cached property in the cache.
//   static const _propertiesCacheKey = 'cached_properties';
//
//   /// Key for storing a cached municipality in the cache.
//   static const _municipalityCacheKey = 'cached_municipality';
//
//   /// Key for storing the cached purchase history in the cache.
//   static const _purchaseHistoryCacheKey = 'cached_purchase_history';
//
//   // --- Onboarding Methods ---
//
//   /// Checks if the user has completed onboarding.
//   ///
//   /// This method retrieves the onboarding status from the cache. If no value is
//   /// stored, it defaults to `false`.
//   ///
//   /// Returns:
//   /// - `true` if the user has completed onboarding.
//   /// - `false` otherwise or in case of an error.
//   static Future<bool> checkOnBoardingStatus() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getBool(_onboardingCacheKey) ?? false;
//     } catch (e) {
//       DevLogs.logError('Error checking onboarding status: $e');
//       return false;
//     }
//   }
//
//   static Future<bool> checkTutorialStatus() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getBool(_hasSeenTutorialCacheKey) ?? false;
//     } catch (e) {
//       DevLogs.logError('Error checking onboarding status: $e');
//       return false;
//     }
//   }
//
//   /// Updates the onboarding status in the cache.
//   ///
//   /// Parameters:
//   /// - [status]: The new onboarding status to save (`true` for completed).
//   ///
//   /// Returns:
//   /// - `true` if the status was successfully updated.
//   /// - `false` otherwise or in case of an error.
//   static Future<bool> updateOnboardingStatus(bool status) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setBool(_onboardingCacheKey, status);
//       return prefs.getBool(_onboardingCacheKey) ?? false;
//     } catch (e) {
//       DevLogs.logError('Error updating tutorial status: $e');
//       return false;
//     }
//   }
//
//   static Future<bool> updateHasSeenTutorialStatus(bool status) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setBool(_hasSeenTutorialCacheKey, status);
//       return prefs.getBool(_hasSeenTutorialCacheKey) ?? false;
//     } catch (e) {
//       DevLogs.logError('Error updating tutorial status: $e');
//       return false;
//     }
//   }
//
//   /// Caches a municipality object.
//   ///
//   /// This method serializes the given [municipality] to JSON and stores it in the
//   /// cache under a specific key.
//   ///
//   /// Parameters:
//   /// - [municipality]: The municipality to be cached.
//   ///
//   /// Returns:
//   /// - Nothing. Logs an error if caching fails.
//   static Future<void> cacheMunicipality({required Municipality municipality}) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final municipalityJson = jsonEncode(municipality.toJson());
//       await prefs.setString(_municipalityCacheKey, municipalityJson);
//     } catch (e) {
//       DevLogs.logError('Error saving Municipality to cache: $e');
//     }
//   }
//
//   /// Retrieves a municipality object from the cache.
//   ///
//   /// This method deserializes the JSON stored in the cache back into a [Municipality]
//   /// object. If no municipality is cached or if deserialization fails, `null` is
//   /// returned.
//   ///
//   /// Returns:
//   /// - A [Municipality] object if the cache contains valid data.
//   /// - `null` otherwise or in case of an error.
//   static Future<Municipality?> getMunicipalityCache() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final municipality = prefs.getString(_municipalityCacheKey);
//       if (municipality != null) {
//         final hostData = jsonDecode(municipality) as Map<String, dynamic>;
//         return Municipality.fromJson(hostData);
//       }
//     } catch (e) {
//       DevLogs.logError('Error retrieving Municipality from cache: $e');
//     }
//     return null;
//   }
//
//   /// Clears the cached municipality data.
//   ///
//   /// This method removes the municipality data stored in the cache.
//   ///
//   /// Returns:
//   /// - Nothing. Logs an error if clearing fails.
//   static Future<void> clearMunicipalityCache() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove(_municipalityCacheKey);
//     } catch (e) {
//       DevLogs.logError('Error clearing Municipality cache: $e');
//     }
//   }
//
//   // --- Property List Methods ---
//
//   /// Caches a list of properties.
//   ///
//   /// This method serializes the given list of [properties] to JSON and stores
//   /// it in the cache.
//   ///
//   /// Parameters:
//   /// - [properties]: The list of properties to cache.
//   ///
//   /// Returns:
//   /// - Nothing. Logs an error if caching fails.
//   static Future<void> cachePropertyList({required List<MeterDetails> properties}) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final propertiesJson = jsonEncode(properties.map((e) => e.toJson()).toList());
//       await prefs.setString(_propertiesCacheKey, propertiesJson);
//     } catch (e) {
//       DevLogs.logError('Error saving Property List to cache: $e');
//     }
//   }
//
//   /// Retrieves the cached list of properties.
//   ///
//   /// This method deserializes the JSON stored in the cache back into a list of
//   /// [MeterDetails] objects. If no properties are cached or if deserialization fails,
//   /// an empty list is returned.
//   ///
//   /// Returns:
//   /// - A list of [MeterDetails] objects if the cache contains valid data.
//   /// - An empty list otherwise or in case of an error.
//   static Future<List<MeterDetails>> getPropertyListCache() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final propertiesJson = prefs.getString(_propertiesCacheKey);
//       if (propertiesJson != null) {
//         final decoded = jsonDecode(propertiesJson) as List;
//         return decoded.map((e) => MeterDetails.fromJson(e as Map<String, dynamic>)).toList();
//       }
//     } catch (e) {
//       DevLogs.logError('Error retrieving Property List from cache: $e');
//     }
//     return [];
//   }
//
//   /// Deletes a specific property from the cached list.
//   ///
//   /// This method retrieves the cached list of properties, removes the specified
//   /// [property] if it exists, and updates the cache.
//   ///
//   /// Parameters:
//   /// - [meterNumber]: The ID of the property to remove.
//   ///
//   /// Returns:
//   /// - Nothing. Logs an error if deletion fails.
//   static Future<void> deleteProperty({required String meterNumber}) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final currentProperties = await getPropertyListCache();
//       final updatedProperties = currentProperties
//           .where((property) => property.number != meterNumber)
//           .toList();
//       final updatedPropertiesJson = jsonEncode(updatedProperties.map((e) => e.toJson()).toList());
//       await prefs.setString(_propertiesCacheKey, updatedPropertiesJson);
//     } catch (e) {
//       DevLogs.logError('Error deleting Property from cache: $e');
//     }
//   }
//
//   /// Updates a specific property in the cached list.
//   ///
//   /// This method retrieves the cached list of properties, replaces the property
//   /// with the same ID as [updatedProperty] if it exists, and updates the cache.
//   ///
//   /// Parameters:
//   /// - [updatedProperty]: The updated property object.
//   ///
//   /// Returns:
//   /// - Nothing. Logs an error if updating fails.
//   static Future<void> updateProperty({required MeterDetails updatedProperty}) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final currentProperties = await getPropertyListCache();
//       final index = currentProperties.indexWhere((property) => property.number == updatedProperty.number);
//       if (index != -1) {
//         currentProperties[index] = updatedProperty;
//         final updatedPropertiesJson = jsonEncode(currentProperties.map((e) => e.toJson()).toList());
//         await prefs.setString(_propertiesCacheKey, updatedPropertiesJson);
//       }
//     } catch (e) {
//       DevLogs.logError('Error updating Property in cache: $e');
//     }
//   }
//
//
//
//
//   /// Caches the list of purchase history after a successful purchase.
//   ///
//   /// This method serializes the list of [PurchaseHistory] to JSON and stores it
//   /// in the cache.
//   ///
//   /// Parameters:
//   /// - [history]: The list of purchase history to cache.
//   static Future<void> cachePurchaseHistory({required List<PurchaseHistory> history}) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final historyJson = jsonEncode(history.map((e) => e.toJson()).toList());
//       await prefs.setString(_purchaseHistoryCacheKey, historyJson);
//     } catch (e) {
//       DevLogs.logError('Error saving Purchase History to cache: $e');
//     }
//   }
//
//   /// Retrieves the cached list of purchase history.
//   ///
//   /// This method deserializes the JSON stored in the cache back into a list of
//   /// [PurchaseHistory] objects.
//   ///
//   /// Returns:
//   /// - A list of [PurchaseHistory] objects if the cache contains valid data.
//   /// - An empty list otherwise or in case of an error.
//   static Future<List<PurchaseHistory>> getPurchaseHistoryCache() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final historyJson = prefs.getString(_purchaseHistoryCacheKey);
//       if (historyJson != null) {
//         final decoded = jsonDecode(historyJson) as List;
//         return decoded.map((e) => PurchaseHistory.fromJson(e as Map<String, dynamic>)).toList();
//       }
//     } catch (e) {
//       DevLogs.logError('Error retrieving Purchase History from cache: $e');
//     }
//     return [];
//   }
// }
