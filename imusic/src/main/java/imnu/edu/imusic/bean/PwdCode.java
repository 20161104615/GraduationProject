package imnu.edu.imusic.bean;

import java.util.Date;

public class PwdCode {
    private long codeT;
    private String exist;
    private String VerifyCode;

    public PwdCode() {
    }

    public long getCodeT() {
        return codeT;
    }

    public void setCodeT(long codeT) {
        this.codeT = codeT;
    }

    public String getVerifyCode() {
        return VerifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        VerifyCode = verifyCode;
    }

    public String getExist() {
        return exist;
    }

    public void setExist(String exist) {
        this.exist = exist;
    }

    @Override
    public String toString() {
        return "PwdCode{" +
                "codeT=" + codeT +
                ", exist=" + exist +
                ", VerifyCode='" + VerifyCode + '\'' +
                '}';
    }
}
