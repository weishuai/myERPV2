import { SearchVo} from '../utils/SearchVo';
export class  AttenceSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class AttenceVo {
  id = '';

  name = '';

  date?: Date = new Date();

  checkInTime?: Date = new Date();

  checkInTemperature = '';

  checkInPlace = '';

  checkInAddress = '';

  checkInNotes = '';

  checkOutTime?: Date = new Date();

  checkOutTemperature = '';

  checkOutPlace = '';

  checkOutAddress = '';

  checkOutNotes = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
