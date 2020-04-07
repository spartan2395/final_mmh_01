package com.idea.mmh.model.dto;

//MMH_POIT 
public class PoitDto {

	// ����������Ʈ�ѹ�
	private int opno;

	// ����Ʈ�չ�ȣ
	private int pono;

	// ����Ʈ�ձ׸�����̵�
	private String pogridid;

	// ����Ʈ�ճ���
	private String pocontent;

	// ����Ʈ�ճʺ�
	private Float powidth;

	// ����Ʈ�ճ���
	private Float poheight;

	// ����Ʈ����ġ(����)
	private Float potop;

	// ����Ʈ����ġ(����)
	private Float poleft;

	// ����Ʈ����ġ('Z')
	private Float poz;

	public PoitDto() {
		super();
	}

	public PoitDto(int opno, int pono, String pogridid, String pocontent, Float powidth, Float poheight, Float potop,
			Float poleft, Float poz) {
		super();
		this.opno = opno;
		this.pono = pono;
		this.pogridid = pogridid;
		this.pocontent = pocontent;
		this.powidth = powidth;
		this.poheight = poheight;
		this.potop = potop;
		this.poleft = poleft;
		this.poz = poz;
	}

	public int getOpno() {
		return opno;
	}

	public void setOpno(int opno) {
		this.opno = opno;
	}

	public int getPono() {
		return pono;
	}

	public void setPono(int pono) {
		this.pono = pono;
	}

	public String getPogridid() {
		return pogridid;
	}

	public void setPogridid(String pogridid) {
		this.pogridid = pogridid;
	}

	public String getPocontent() {
		return pocontent;
	}

	public void setPocontent(String pocontent) {
		this.pocontent = pocontent;
	}

	public Float getPowidth() {
		return powidth;
	}

	public void setPowidth(Float powidth) {
		this.powidth = powidth;
	}

	public Float getPoheight() {
		return poheight;
	}

	public void setPoheight(Float poheight) {
		this.poheight = poheight;
	}

	public Float getPotop() {
		return potop;
	}

	public void setPotop(Float potop) {
		this.potop = potop;
	}

	public Float getPoleft() {
		return poleft;
	}

	public void setPoleft(Float poleft) {
		this.poleft = poleft;
	}

	public Float getPoz() {
		return poz;
	}

	public void setPoz(Float poz) {
		this.poz = poz;
	}

	// ����Ʈ�� �� ����
	public void CopyData(PoitDto param) {
		this.opno = param.getOpno();
		this.pono = param.getPono();
		this.pogridid = param.getPogridid();
		this.pocontent = param.getPocontent();
		this.powidth = param.getPowidth();
		this.poheight = param.getPoheight();
		this.potop = param.getPotop();
		this.poleft = param.getPoleft();
		this.poz = param.getPoz();
	}

	@Override
	public String toString() {
		return "PoitDto [opno=" + opno + ", pono=" + pono + ", pogridid=" + pogridid + ", pocontent=" + pocontent
				+ ", powidth=" + powidth + ", poheight=" + poheight + ", potop=" + potop + ", poleft=" + poleft
				+ ", poz=" + poz + "]";
	}

}
