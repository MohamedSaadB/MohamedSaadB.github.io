import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:my_landing_page/features/home/data/models/hero_profile_model.dart';


import '../models/profile_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';

class PortfolioRepository {
  const PortfolioRepository();

  Future<HeroProfileModel> loadProfile() async {
    final raw = await rootBundle.loadString('assets/content/profile.json');
    final map = jsonDecode(raw) as Map<String, dynamic>;
    return HeroProfileModel.fromJson(map);
  }

  Future<List<ServiceModel>> loadServices() async {
    final raw = await rootBundle.loadString('assets/content/services.json');
    final list = (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
    return list.map(ServiceModel.fromJson).toList();
  }

  Future<List<ProjectModel>> loadProjects() async {
    final raw = await rootBundle.loadString('assets/content/projects.json');
    final list = (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
    return list.map(ProjectModel.fromJson).toList();
  }
}
