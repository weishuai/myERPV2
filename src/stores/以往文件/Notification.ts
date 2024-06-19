import { SearchVo} from '../utils/SearchVo';
export class  NotificationSearchVo extends SearchVo{
  read?: number;
};


export class NotificationVo {
  id = '';

  message = '';

  read = 0;

  userId = '';

  subject = '';

  createdAt?: Date;
}
