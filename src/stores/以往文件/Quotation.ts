import { SearchVo} from '../utils/SearchVo';
export class  QuotationSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
  startDate?: '';
  endDate?: '';
  stageName?: '';
  Owner?: '';
  month?: '';
};

export class QuotationVo {
  id = '';

  refNumber = '';

  status = 'Draft';

  clientId = '0';

  quotationName = '';

  salesPerson = '';

  opportunity = '';

  paymentTerms = '';

  contact = '0';

  taxes = '0';

  expirationDate?: Date = new Date();

  currency = '0';

  cat = '0';

  test2 = '0';

  additionalField3 = '';

  additionalField4 = '';

  termsConditions = '';

  remark = '';

  amount = '0.00';

  discountType = '';

  percentage = '0.00';

  discount = '1.00';

  totalDiscount = '0.00';

  name = '';

  test1 = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
export class VendorAttachment {
  name = '';

  url = '';

  mimetype = '';

  size = 0;

  issueId = '';

  vendorId = '';
}

export class AttachmentDocument {
  id = '';

  dateUploaded?: Date;

  uploadUserName = '';

  name = '';

  url = '';

  mimetype = '';

  size = 0;

  issueId = '';
}

export class NewAttachmentDocument {
  names?: string[];
}
