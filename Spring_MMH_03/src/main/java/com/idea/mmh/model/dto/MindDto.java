package com.idea.mmh.model.dto;

public class MindDto {

	// ����������Ʈ�ѹ�
	private int opno;

	// ���ε�������̸�
	private String miname;

	// ���ε�����ϰ��
	private String miaddr;

	// ���ε�ʳʺ�
	private Float miwidth;

	// ���ε�ʳ���
	private Float miheight;

	// ���ε����ġ(����)
	private Float mitop;

	// ���ε����ġ(����)
	private Float mileft;

	// ���ε����ġ('Z')
	private Float miz;

	public MindDto() {
		super();
	}

	public MindDto(int opno, String miname, String miaddr, Float miwidth, Float miheight, Float mitop, Float mileft,
			Float miz) {
		super();
		this.opno = opno;
		this.miname = miname;
		this.miaddr = miaddr;
		this.miwidth = miwidth;
		this.miheight = miheight;
		this.mitop = mitop;
		this.mileft = mileft;
		this.miz = miz;
	}

	public int getOpno() {
		return opno;
	}

	public void setOpno(int opno) {
		this.opno = opno;
	}

	public String getMiname() {
		return miname;
	}

	public void setMiname(String miname) {
		this.miname = miname;
	}

	public String getMiaddr() {
		return miaddr;
	}

	public void setMiaddr(String miaddr) {
		this.miaddr = miaddr;
	}

	public Float getMiwidth() {
		return miwidth;
	}

	public void setMiwidth(Float miwidth) {
		this.miwidth = miwidth;
	}

	public Float getMiheight() {
		return miheight;
	}

	public void setMiheight(Float miheight) {
		this.miheight = miheight;
	}

	public Float getMitop() {
		return mitop;
	}

	public void setMitop(Float mitop) {
		this.mitop = mitop;
	}

	public Float getMileft() {
		return mileft;
	}

	public void setMileft(Float mileft) {
		this.mileft = mileft;
	}

	public Float getMiz() {
		return miz;
	}

	public void setMiz(Float miz) {
		this.miz = miz;
	}

	// ���ε�� �� ����
	public void CopyData(MindDto param) {
		this.opno = param.getOpno();
		this.miname = param.getMiname();
		this.miaddr = param.getMiaddr();
		this.miwidth = param.getMiwidth();
		this.miheight = param.getMiheight();
		this.mitop = param.getMitop();
		this.mileft = param.getMileft();
		this.miz = param.getMiz();
	}

	@Override
	public String toString() {
		return "MindDto [opno=" + opno + ", miname=" + miname + ", miaddr=" + miaddr + ", miwidth=" + miwidth
				+ ", miheight=" + miheight + ", mitop=" + mitop + ", mileft=" + mileft + ", miz=" + miz + "]";
	}

}
