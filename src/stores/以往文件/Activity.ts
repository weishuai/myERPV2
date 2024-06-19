import { SearchVo} from '../utils/SearchVo';
export class  ActivitySearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
};


export class ActivityVo {
  id = '';

  mid = '';

  mtable = '';

  types = '';

  subject = '';

  starts?: Date = new Date();

  ends?: Date = new Date();

  allDayEvent = 0;

  attendees1 = '';

  attendees2 = '';

  relatedType = '';

  relatedTo = '';

  eventType = '';

  location = '';

  description = '';

  collaborate1 = '';

  collaborate2 = '';

  priority = '';

  status = '';

  attachment = '';

  emailTo = '';

  cc = '';

  sendMine = '';

  contact = '';

  caller = '';

  senderNumber = '';

  receiverNumber = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
