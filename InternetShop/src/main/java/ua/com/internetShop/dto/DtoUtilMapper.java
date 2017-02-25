package ua.com.internetShop.dto;

import java.util.ArrayList;

import java.util.List;

import ua.com.internetShop.entity.NoteBook;
import ua.com.internetShop.entity.MobilePhone;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.entity.Tv;
import ua.com.internetShop.entity.Tablet;

public class DtoUtilMapper {


	public static List<NoteBookDto> NoteBookToNoteBookDto (List<NoteBook> noteBooks){
		List<NoteBookDto> noteBookDtos = new ArrayList<NoteBookDto>();
		for (NoteBook noteBook : noteBooks) {
			noteBookDtos.add(new NoteBookDto(noteBook.getBrand(),
					noteBook.getDisplay(),
					noteBook.getPrice()));
		}
		return noteBookDtos;
	}

	
	public static List<MobilePhoneDto> MobilePhoneToMobilePhoneDtos (List<MobilePhone> mobilePhones){
		List<MobilePhoneDto> mobilePhoneDtos= new ArrayList<MobilePhoneDto>();
		for (MobilePhone mobilePhone : mobilePhones) {
			mobilePhoneDtos.add(new MobilePhoneDto(mobilePhone.getBrand(),
					mobilePhone.getDisplay(), mobilePhone.getPrice()));
		}
		return mobilePhoneDtos;
	}

	
	public static List<ProviderDto> providerToProviderDtos (List<Provider> providers){
		List<ProviderDto> providerDtos = new ArrayList<ProviderDto>();
		for (Provider provider : providers) {
			providerDtos.add(new ProviderDto(provider.getName(),
					provider.getEmail(), provider.getPhone()));
		}
		return providerDtos;
		
	}
	
	
	public static List<TvDto> TvToTvDtos (List<Tv> tvs){
		List<TvDto> tvDtos = new ArrayList<TvDto>();
		for (Tv tv : tvs) {
			tvDtos.add(new TvDto(tv.getBrand(),
					tv.getDisplay(),
					tv.getPrice()));
		}
		return tvDtos;
	}
	
	public static List<TabletDto> TabletToTabletDtos (List<Tablet> tablets){
		List<TabletDto> TabletDtos = new ArrayList<TabletDto>();
		for (Tablet tablet : tablets) {
			TabletDtos.add(new TabletDto(tablet.getBrand(),
					tablet.getDisplay(),
					tablet.getPrice()));
		}
		return TabletDtos;
	}
	
}
