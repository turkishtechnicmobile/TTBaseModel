//
//  APIGatewayService.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 17.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import TTBaseApp

public protocol APIGatewayService {
    func getFleets(completion: @escaping (Result<BaseResponse<FleetResponse>, BaseError>) -> Void) -> TTCancelable
    func getAirCrafts(completion: @escaping (ResponseBaseNewModel<ACModelList>) -> Void)
    func getLocations(completion: @escaping (Result<BaseResponse<LocationResponseRem>, BaseError>) -> Void) -> TTCancelable
    func getChapters(completion: @escaping (Result<BaseResponse<ChapterResponse>, BaseError>) -> Void) -> TTCancelable
    func getSections(of chapter: Int, completion: @escaping (Result<BaseResponse<SectionResponse>, BaseError>) -> Void) -> TTCancelable
    func getTranCodes(with type: TranCodeType, completion: @escaping (Result<BaseResponse<TranCodeResponse>, BaseError>) -> Void) -> TTCancelable
    func getEmployee(by registerID: String, completion: @escaping (Result<BaseResponse<EmployeeResponse>, BaseError>) -> Void) -> TTCancelable
    func getAcUnitsBy(ac: String, completion: @escaping (ResponseBaseNewModel<ACModelList>) -> Void)
    func getSkills(completion: @escaping (Result<BaseResponse<SkillResponse>, BaseError>) -> Void) -> TTCancelable
    func getCdrmLocations(fleet: String, completion: @escaping (Result<BaseResponse<CdrmLocationResponse>, BaseError>) -> Void) -> TTCancelable
    func getCdrmParts(fleet: String, mainWhere: String, completion: @escaping (Result<BaseResponse<CdrmPartResponse>, BaseError>) -> Void) -> TTCancelable
    func getCdrmDescriptions(fleet: String, mainWhere: String, what: String, completion: @escaping (Result<BaseResponse<CdrmDecriptionResponse>, BaseError>) -> Void) -> TTCancelable
    
    func getDefectReportsByAc(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportListResponse>, BaseError>) -> Void) -> TTCancelable
    func defectReport(method: HttpMethod, with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportResponse>, BaseError>) -> Void) -> TTCancelable
    func defectReportDefer(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportDeferResponse>, BaseError>) -> Void) -> TTCancelable
    func defectReportPn(method: HttpMethod, with body: DefectReportPn, completion: @escaping (Result<BaseResponse<DefectReportPnResponse>, BaseError>) -> Void) -> TTCancelable
    func defectReportTroubleShooting(method: HttpMethod, with body: DefectReportTroubleShooting, completion: @escaping (Result<BaseResponse<DefectReportTroubleShootingResponse>, BaseError>) -> Void) -> TTCancelable
    func defectReportResolution(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportResponse>, BaseError>) -> Void) -> TTCancelable
    func getDefectMels(with body: DefectMel, completion: @escaping (Result<BaseResponse<DefectMelResponse>, BaseError>) -> Void) -> TTCancelable
    func getDefectCategoryCdrmConfigurations(completion: @escaping (Result<BaseResponse<DefectCategoryCdrmConfigResponse>, BaseError>) -> Void) -> TTCancelable
    func getWorkOrders(with body: WorkOrder, completion: @escaping (Result<BaseResponse<WorkOrderResponse>, BaseError>) -> Void) -> TTCancelable
    func getDefectReportsArchive(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportListResponse>, BaseError>) -> Void) -> TTCancelable
    func registerDeviceToken(with body: DeviceToken, completion: @escaping (Result<BaseResponse<BaseModel>, BaseError>) -> Void) -> TTCancelable
    func acActualFlights(with body: AcActualFlight, completion: @escaping (Result<BaseResponse<AcActualFlightResponse>, BaseError>) -> Void) -> TTCancelable
    func pnMaster(with body: PnMaster, completion: @escaping (Result<BaseResponse<PnMasterResponse>, BaseError>) -> Void) -> TTCancelable
    func inventoryDetails(with body: InventoryDetail, completion: @escaping (Result<BaseResponse<InventoryDetailResponse>, BaseError>) -> Void) -> TTCancelable
    func inventorySummaries(with body: InventoryDetail, completion: @escaping (Result<BaseResponse<InventorySummaryResponse>, BaseError>) -> Void) -> TTCancelable
    func inventoryControls(with body: InventoryControl, completion: @escaping (Result<BaseResponse<InventoryControlResponse>, BaseError>) -> Void) -> TTCancelable
    func getDefectImages(with body: DefectImageRequest, completion: @escaping (Result<BaseResponse<DefectImageResponse>, BaseError>) -> Void) -> TTCancelable
    func addDefectImage(with body: DefectImageRequest, completion: @escaping (Result<BaseResponse<DefectAddImageResponse>, BaseError>) -> Void) -> TTCancelable
    func deleteDefectImage(with body: DefectImageRequest, completion: @escaping (Result<BaseResponse<DefectImageResponse>, BaseError>) -> Void) -> TTCancelable
    func getDefaultNotes(with body: DefaultNoteRequest, completion: @escaping (Result<BaseResponse<DefaultNoteResponse>, BaseError>) -> Void) -> TTCancelable
}
