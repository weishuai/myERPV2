import { SearchVo} from '../utils/SearchVo';
export class  ContacPersonSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
};



export class ContacPersonVo {
  id = '';

  name = '';

  isAlert = 'Normal';

  description = '';

  client = '';

  no = '';

  email = '';

  jobTitle = '';

  account = '';

  phoneNumber = '';

  mobileNumber = '';

  faxNumber = '';

  dateBirth?: Date = new Date();

  language = '';

  income = '';

  marital = '';

  children = '';

  street = '';

  city = '';

  state = '';

  postCode = '';

  country = '';

  emergency = '';

  securityCourse = '';

  additionalField3 = '';

  additionalField4 = '';

  additionalField5 = '';

  gender = '';

  islogin = '';

  login = '';

  password = '';

  isnotification = '';

  isemail = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
