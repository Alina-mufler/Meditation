package models;


import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.Builder;
import lombok.ToString;


@Getter
@Setter
@EqualsAndHashCode
@Builder
@ToString
public class Music {
    private Long id;
    private String musicName;
}
