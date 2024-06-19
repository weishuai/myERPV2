import { SearchVo} from '../utils/SearchVo';
export class FHuserVo {
  id?:string;
  email?:string;
  password?:string;
  userName?:string;
  app?:string;
  timezone?:string;
  isLocked?:number;
  mobileCountryCode?:string;
  mobileCallingCountryCode?:string;
  mobileNumber?:string;
  isDel?:number;
  avatar?:string;
  lastSignIn?:Date;
  createdAt?:Date;
}
export class FHuserSearchVo extends SearchVo{
  read?: number;
  fundType?:string;
};