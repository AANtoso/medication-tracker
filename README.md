## Database

Patients
- username:string
- email:string
- password:password_digest

Medications
- name:text
- class:text
- dose:text
- frequency:text
- route:text

Providers
- name:text
- phone:text
- location:text

Prescriptions
- medication_id:integer
- provider_id:integer
- prescribed_date:datetime
