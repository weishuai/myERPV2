import { SearchVo} from '../utils/SearchVo';
export class  WorkSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
};


export class WorkVo {
  id = '';

  refNumber = '';

  priority = 'Low';

  termsId = '';

  quote = '';

  title = '';

  states = 'Upcoming';

  qty = '';

  workType = '';

  room = '';

  client = '';

  contact = '';

  workInstructions = '';

  assignTo = '';

  FHassignTo = '';

  startDate?: Date = new Date();

  endDate?: Date = new Date();

  remark = '';

  reedback = '';

  fullAddress = '';

  signBelowTxt = '';

  signBelowPhoto = '';

  signBelowUserid = '';

  signBelowTime: Date = new Date();

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
