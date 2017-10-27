package by.last.world.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "countrylanguage", schema = "world")
@IdClass(CountrylanguageEntityPK.class)
public class CountrylanguageEntity {
    private String countryCode;
    private String language;
    private Serializable isOfficial;
    private double percentage;

    @Id
    @Column(name = "CountryCode")
    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    @Id
    @Column(name = "Language")
    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Basic
    @Column(name = "IsOfficial")
    public Serializable getIsOfficial() {
        return isOfficial;
    }

    public void setIsOfficial(Serializable isOfficial) {
        this.isOfficial = isOfficial;
    }

    @Basic
    @Column(name = "Percentage")
    public double getPercentage() {
        return percentage;
    }

    public void setPercentage(double percentage) {
        this.percentage = percentage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CountrylanguageEntity that = (CountrylanguageEntity) o;

        if (Double.compare(that.percentage, percentage) != 0) return false;
        if (countryCode != null ? !countryCode.equals(that.countryCode) : that.countryCode != null) return false;
        if (language != null ? !language.equals(that.language) : that.language != null) return false;
        if (isOfficial != null ? !isOfficial.equals(that.isOfficial) : that.isOfficial != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = countryCode != null ? countryCode.hashCode() : 0;
        result = 31 * result + (language != null ? language.hashCode() : 0);
        result = 31 * result + (isOfficial != null ? isOfficial.hashCode() : 0);
        temp = Double.doubleToLongBits(percentage);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
