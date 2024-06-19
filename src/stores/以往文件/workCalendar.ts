import { SearchVo} from '../utils/SearchVo';
export class  workCalendarSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class workCalendarVo {
  id = '';

  quote = '';

  title = '';

  states = '';

  qty = '';

  workType = '';

  room = '';

  client = '';

  contact = '';

  workInstructions = '';

  assignTo = '';

  startDate = '';

  endDate = '';

  remark = '';

  reedback = '';

  fullAddress = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
