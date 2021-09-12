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
    func getFleets(completion: @escaping (Result<BaseResponse<FleetResponse>, BaseError>) -> Void) -> Cancelable
    func getAirCrafts(completion: @escaping (Result<BaseResponse<AcMasterResponse>, BaseError>) -> Void) -> Cancelable
    func getLocations(completion: @escaping (Result<BaseResponse<LocationResponseRem>, BaseError>) -> Void) -> Cancelable
    func getChapters(completion: @escaping (Result<BaseResponse<ChapterResponse>, BaseError>) -> Void) -> Cancelable
    func getSections(of chapter: Int, completion: @escaping (Result<BaseResponse<SectionResponse>, BaseError>) -> Void) -> Cancelable
    func getTranCodes(with type: TranCodeType, completion: @escaping (Result<BaseResponse<TranCodeResponse>, BaseError>) -> Void) -> Cancelable
    func getEmployee(by registerID: String, completion: @escaping (Result<BaseResponse<EmployeeResponse>, BaseError>) -> Void) -> Cancelable
    func getAcUnitsBy(ac: String, completion: @escaping (Result<BaseResponse<AcMasterResponse>, BaseError>) -> Void) -> Cancelable
    func getSkills(completion: @escaping (Result<BaseResponse<SkillResponse>, BaseError>) -> Void) -> Cancelable
    func getCdrmLocations(fleet: String, completion: @escaping (Result<BaseResponse<CdrmLocationResponse>, BaseError>) -> Void) -> Cancelable
    func getCdrmParts(fleet: String, mainWhere: String, completion: @escaping (Result<BaseResponse<CdrmPartResponse>, BaseError>) -> Void) -> Cancelable
    func getCdrmDescriptions(fleet: String, mainWhere: String, what: String, completion: @escaping (Result<BaseResponse<CdrmDecriptionResponse>, BaseError>) -> Void) -> Cancelable
    
    func getDefectReportsByAc(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportListResponse>, BaseError>) -> Void) -> Cancelable
    func defectReport(method: HttpMethod, with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportResponse>, BaseError>) -> Void) -> Cancelable
    func defectReportDefer(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportDeferResponse>, BaseError>) -> Void) -> Cancelable
    func defectReportPn(method: HttpMethod, with body: DefectReportPn, completion: @escaping (Result<BaseResponse<DefectReportPnResponse>, BaseError>) -> Void) -> Cancelable
    func defectReportTroubleShooting(method: HttpMethod, with body: DefectReportTroubleShooting, completion: @escaping (Result<BaseResponse<DefectReportTroubleShootingResponse>, BaseError>) -> Void) -> Cancelable
    func defectReportResolution(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportResponse>, BaseError>) -> Void) -> Cancelable
    func getDefectMels(with body: DefectMel, completion: @escaping (Result<BaseResponse<DefectMelResponse>, BaseError>) -> Void) -> Cancelable
    func getDefectCategoryCdrmConfigurations(completion: @escaping (Result<BaseResponse<DefectCategoryCdrmConfigResponse>, BaseError>) -> Void) -> Cancelable
    func getWorkOrders(with body: WorkOrder, completion: @escaping (Result<BaseResponse<WorkOrderResponse>, BaseError>) -> Void) -> Cancelable
    func getDefectReportsArchive(with body: Defect, completion: @escaping (Result<BaseResponse<DefectReportListResponse>, BaseError>) -> Void) -> Cancelable
    func registerDeviceToken(with body: DeviceToken, completion: @escaping (Result<BaseResponse<BaseModel>, BaseError>) -> Void) -> Cancelable
    func acActualFlights(with body: AcActualFlight, completion: @escaping (Result<BaseResponse<AcActualFlightResponse>, BaseError>) -> Void) -> Cancelable
    func pnMaster(with body: PnMaster, completion: @escaping (Result<BaseResponse<PnMasterResponse>, BaseError>) -> Void) -> Cancelable
    func inventoryDetails(with body: InventoryDetail, completion: @escaping (Result<BaseResponse<InventoryDetailResponse>, BaseError>) -> Void) -> Cancelable
    func inventorySummaries(with body: InventoryDetail, completion: @escaping (Result<BaseResponse<InventorySummaryResponse>, BaseError>) -> Void) -> Cancelable
    func inventoryControls(with body: InventoryControl, completion: @escaping (Result<BaseResponse<InventoryControlResponse>, BaseError>) -> Void) -> Cancelable
}
