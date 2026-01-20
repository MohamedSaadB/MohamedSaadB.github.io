import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/legal_repository.dart';
import 'legal_state.dart';

class LegalCubit extends Cubit<LegalState> {
  LegalCubit(this._repo) : super(const LegalState.initial());

  final LegalRepository _repo;

  Future<void> loadPricing() async {
    emit(const LegalState.loading());
    try {
      final pricing = await _repo.loadPricing();
      emit(LegalState.loaded(pricing: pricing));
    } catch (e) {
      emit(LegalState.error(e.toString()));
    }
  }

  Future<void> loadRefund() async {
    emit(const LegalState.loading());
    try {
      final refund = await _repo.loadRefundPolicy();
      emit(LegalState.loaded(refund: refund));
    } catch (e) {
      emit(LegalState.error(e.toString()));
    }
  }

  Future<void> loadCheckout() async {
    emit(const LegalState.loading());
    try {
      final checkout = await _repo.loadCheckout();
      emit(LegalState.loaded(checkout: checkout));
    } catch (e) {
      emit(LegalState.error(e.toString()));
    }
  }
}
