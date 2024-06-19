import { SearchVo} from '../utils/SearchVo';
export class  FHuserSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class FHuserVo {
  id = '';

  email = '';

  password = '';

  userName = '';

  app = '';

  timezone = '';

  isLocked = 0;

  mobileCountryCode = '';

  mobileCallingCountryCode = '';

  mobileNumber = '';

  isDel = 0;

  avatar = '';

  lastSignIn?: Date = new Date();

  createdAt?: Date = new Date();
}
