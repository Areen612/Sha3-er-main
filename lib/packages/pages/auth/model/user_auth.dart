class ModelUserAuth {
  String firstName;
  String lastName;
  String email;
  String password;
  // * cv
  DateTime? birthDate;
  String experience;
  String skills;
  String phoneNumber;
  String country;
  String city;
  // String creator;
// List<ModelCv>? cv;

  ModelUserAuth({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.password = '',
    this.birthDate,
    this.experience = '',
    this.skills = '',
    this.phoneNumber = '',
    this.country = '',
    this.city = '',
  });
  setFname(String? firstName) => this.firstName = firstName ?? '';
  setLname(String? lastName) => this.lastName = lastName ?? '';
  setEmail(String? email) => this.email = email ?? '';
  setPass(String? password) => this.password = password ?? '';
  setbirthDate(DateTime? birthDate) => this.birthDate = birthDate;

  setExperience(String? experience) => this.experience = experience ?? '';
  setSkills(String? skills) => this.skills = skills ?? '';
  setPhoneNumber(String? phoneNumber) => this.phoneNumber = phoneNumber ?? '';
  setCountry(String? country) => this.country = country ?? '';
  setCity(String? city) => this.city = city ?? '';
  // TODO: creator
  //setCreator(String? creator) => this.creator = creator ?? '';
  @override
  String toString() => 'ModelUserAuth(email: $email, password: $password)';
}
