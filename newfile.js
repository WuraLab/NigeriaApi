Name:string,State:string,Abbrevation:string,Location:string,Type:string,Founded:string,Number_of_students:string,Chancellor:string,Pro_chancellor:string,Vice_chancellor:string,URl:string,Social_media_handle_URL:string,Number_of_faculties:string,Motto:string,Programme_offered:string,Religious_Affiliation:string,Memberships_and_Affiliations:string,Wikipedia_Article:string,University_Overview:string,Study_Abroad:string,Sport_Facilities:string,Selection_Type:string,Region:string,Library:string,International_Students:string,Housing:string,Gender:string,Financial_Aids:string,Academic_Calendar:string,Academic_Staff:string,Accreditations:string,Admission_Rate:string,Campus_Setting:string,Faculty_or_Colleges:string,Entity_Type:string,Distance_Learning:string,Colours:string

email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  },
  username: {
    type: DataTypes.STRING,
    allowNull: false
  },
  activated: {
    type: DataTypes.BOOLEAN,


email:string,password:string,username:string,activated:string