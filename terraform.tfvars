#----------------------------------------------------------------------------
# AWS
#----------------------------------------------------------------------------
aws_region = "us-east-1"
account_id = "762383799344"

#----------------------------------------------------------------------------
# API Gateway
#----------------------------------------------------------------------------
stage_name = "equeue"

#----------------------------------------------------------------------------
# Lambda
#----------------------------------------------------------------------------
query_customer_uin_name = "query-customer-with-uin"
activate_pending_staff_name = "activatePendingStaff"
add_opening_hours_name = "addOpeningHours"
delete_customer_with_uin_name = "deleteCustomerWithUin"
delete_opening_hours_name = "deleteOpeningHours"
delete_staff_with_id_name = "deleteStaffWithId"
get_branch_queue_name = "getBranchQueue"
get_joined_queue_status_name = "getJoinedQueueStatus"
join_queue_name = "joinQueue"
leave_queue_name = "leaveQueue"
list_of_branches_name = "listOfBranches"
list_of_branches_with_clinic_id_name = "listOfBranchesWithClinicId"
list_of_clinics_name = "listOfClinics"
list_of_staff_in_clinic_name = "listOfStaffInClinic"
register_customer_name = "registerCustomer"
register_staff_to_existing_clinic_name = "registerStaffToExistingClinic"
register_staff_to_new_clinic_name = "registerStaffToNewClinic"
smart_search_name = "smartSearch"
update_customer_info_name = "updateCustomerInfo"
update_opening_hours_name = "updateOpeningHours"
update_queue_status_name = "updateQueueStatus"
update_staff_name = "updateStaff"
login_name = "login"
logout_name = "logout"
staff_login_name = "staffLogin"
staff_logout_name = "staffLogout"
search_filter_name = "searchFilter"