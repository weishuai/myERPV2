import { SearchVo} from '../utils/SearchVo';
export class  MonthlyGoalSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class MonthlyGoalVo {
  id = '';

  targetNumber = '';

  type = '';

  teamId = '';

  personalId = '';

  byType = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
