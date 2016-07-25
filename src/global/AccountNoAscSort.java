package global;

import java.util.Comparator;

import bank.AccountMemberBean;

public class AccountNoAscSort implements Comparator<AccountMemberBean> {

	@Override
	public int compare(AccountMemberBean first, AccountMemberBean second) {
		int a = 0;
		
		if (first.getAccountNo() > second.getAccountNo()) {
			a = 1;
		} else {
			if (first.getAccountNo() < second.getAccountNo()) {
				a = -1;
			} else {
				a = 0;
			}
		}
		return a;
	}

}
