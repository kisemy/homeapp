json.extract! loan, :id, :Firstname, :Middlename, :Lastname, :Dateofbirth, :IDno, :Pinno, :Designation, :Jobgroup, :ministry, :department, :station, :Address, :Telephone, :Mobile, :E-mail, :Maritalstatus, :Amount, :created_at, :updated_at
json.url loan_url(loan, format: :json)
