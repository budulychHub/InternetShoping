<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="css/shop/backpack.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>TV</h1>

<c:forEach var="tv" items="${tvs}">
	<figure class="snip1518 hover">
		<div class="image">
			<img
				src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSExMWFRUXGBcXFxUXFxcXGBoYFxUXFxUXFxcYHSg
                    gGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy4dICUtLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS
                    0tLS0tLS0tLf/AABEIAMwA+AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAwQFBgcCAQj/xABQEAABAgQBBgkFCwgLAAMAAAABAAIDB
                    BEhMQUGEkFRYRMUcYGRkqGx0SIyVMHSBxYXQkNSU4KTsvAVM2Kis8Lh8SMkRHJzdIOEo7TDJTRj/8QAGAEBAAMBAAAAAAAAAAAAAAAAAAECAwT/
                    xAAwEQACAQIDBwIFBAMAAAAAAAAAAQIDERIUIQQTMUFRYaEy4SJSYoHwQlORwSNxgv/aAAwDAQACEQMRAD8A3FCEIAQhCAEIQgBCEIAQhCAEIQg
                    BCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCEIAQh
                    CAFGzWXpeG8sfEo4YjRcaVFdQ2EKSWZZzsJm4/95v7NivThjdgXX3zyn0w6r/ZXnvpk/ph0O8FmroJrUVSMwwAkkHmXRle/gGnnOyS+nb0O8Fz7
                    7pH0hn63gsoBqdgXXAhTlO/gGqHPGQ9JZ2+C5OeeT/Sofb4LKmyxwXD5e+xMp9XgnCzVzntk70qH0nwXhz4yd6XC6T4LJnyZOpeGROxMovm8e5O
                    FmsnPrJvpkLpPgvDn5kz0yF1v4LJ2yw3JN0tTYpyf1ePcixrfv8AcmemwesvDn/kv02D1lkUSHXHuXDYWxMn9Xj3FjX/AIQMl+mwesvPhCyV6dA
                    6yyB2jrp0LuG8kHD1qck/m8EGufCHkr06B1158IeSfToHXWUswpog8y8iE1oAOhRk+5NjV/hDyT6dA66PhEyT6dA66yiIAbU1bEmyFu7Eyf1eBY
                    1v4RMk+nQOsj4RMk+nQOssnY1uyp/GxPmRW6NAA03BoMRTeoeyd/AsaV8ImSfToHWR8IuSfToHWWXNY0ilAN9LldGAAKUBG2m1Mp38Cxp3wi5J9
                    Ogdb+CPhFyT6dB638FlnAjYEtDhDWB0Kcp9XgixpvwjZJ9Og9b+CPhGyT6dB6x8FmjaDUOgIc0HUBzBRlO4NL+EbJPp0HrHwUjkXOmSm3OZLTDI
                    zmirgwk0GFTZZCIIrTRHQFZ/c7aBlCIAKf1UftiqVNnwRvcGnoQhcwBZjnPHDZyOP0m/smLTlkueLv67H/vN/ZMW+z+slCkN7XaxVKmEMTfUKqC
                    ZEGtK8LrBPSu7CThHcTJrrnG6YxJcgqRgzjnDRK7dCFETaBFB53odMVHil3s0jQUBTaLAcNSsrDU9a4C9aLxsyRgfUkNJe21qbC7FTMDxQ6MPmi
                    i7ZDB/iuxKHUOalVXQsnLqIPiN2Cm268jxW3DW89l3EYRYhJkbio0uXxOwyMN1fzY6K9F11EZepBryd6WLr3BslWN+MKjfXvV7saW4iEKKQKB1N
                    16DoS7Xtd59Cd1b8qUEEG+lzW9QQ2GcAK9Hgqtkp8uICIwCujflPauwyHStXU5NvegA4Ec1F22HXXRVLYkJGWbWjXbwa05iuYcKuzoN064Boxvy
                    IiOoLVA2eCXY+EaRoe6/P2oh02W2eCX4Z43obMu+b0CitdlHGIi+GBcLk02p7DjA2c0DeMQkokIaqG6J9SuHoIOh1wXrYR2LogfjBPpeFQVx2KW
                    7FWhCWh6WqpU/mNA0MpPB1yoP/MuJOWbqxtVPM1m0yo//ACn/ALrlryvEhov6EIXEVBZVnTCLpyYI+e0f8MNaqspy1lhkPKUxBeANJ7XBxwB4Bl
                    jXDzQtqHrJT1Il0M4UXLmlWKVyjLupQwXVJAo8VJGIG3EJw6Vhk3hdBXbj7FsRVGuITqBOOarD+RYT8AQg5sN1Od0JvI8yHJFeiTTSa3byKWlZu
                    G5uiQK7TTvSUbNyIDYaXMkImS3NsYZryFT8LK3uOoeS4ZdR1tlEtMZFt5BpTUdaVk5N3B0dVp+KSKkcqlIEFwaA6hO0fxWbk1zIciEbkal9YOrW
                    EiZGI06TSbnlpy7lZODQIajGyMZW40iSKkEmlqUvtUccmnYVcXSgJqei1EqYAIpRMZdVCgxJJzUMhgnA1/HMr0clwj8U9KSi5vQiLA15U3pZTjz
                    K1CgilSR2dFKYrqKwDC3JXuUuMiRGYdwJx2lNDJFpuCN58KJjNExg8VH8/DFcAncQncYj51TrqPVRI0B1qMZoo3EXA427lwYVQfx/NOnQnUFCuW
                    tcodUuoDUSuzvHcF5wThY26CnzWbarx1tfYiqlsCGja7VyRQ+sW7E7BJtRp6AV4+GDi0tPYrqojNwE2Qw7EUSjIdHAVKciSIvS22llw9jt6jGiu
                    G5IQXmmNuwJXNF1cqP/AMp/7hNJaG4nRA1ilqctU+zYgaGVCNsmSftwsarWEymrIv6EIXMZAsG90KKBlKZBANHMND/hMGPOt5WDZ/5PMTKUwam7
                    2sAAGPAQiASSKVLgOVQ6m7+I0pRxSsisQbE7dVrc9VLQc7JxtP6Y0FvNYcNtW3UQ7JsRrdIktvQVrXXqO9pFl3LST3Gjvm6QIFcD8a9hY35LFbx
                    26n+o1ezVOSLpB90VzYY/otKIBRxqGtJ2gAE8yVkfdEiGI3hIbGwzZ2jpEj9IXvyUVLMi8Na6gc0ioLTW1aX1i5pdIhpGK6Yypy4GEqTXFGwyue
                    Es5peXaLQaeVRpNgahpuRfFS0HKDXgObcEVBu4EbatqFhoepTJ+cMaCzRYRStaEE05KEKXTT4FHBGxsjA7DyHxSlWbQFj7M6o+lVxa7Vo0oOWov
                    t1p1Czlr50M8rXeoj1qrpMjAnzNXMEbkCCqdLTUXRa9jzQgEEHV+NSctyvHqNK46Omiwc11NctMtJl15wCq01lR76VFh8WpA59qUybldsOztKmp
                    oNAPFV3iJy07E9Ei6OAJ3UXjMqwx51t9/WEg3LsB9QS9uzA9ijeLsc+0aGAcLEX3qrrImOzt+pFjZPQThEb0hdukob7i+9RjMjwnWD2ud1T3mqR
                    jSLoR8h0UU2AkKm/iFR6Mcx83mm9u5R0fN1/xWg8tk/gZTjNPlAubrq2h7lMwJlrhWjm11EesWTfRfMs1Uh3KfIZIi8IBo6N71wprT+ayQ24BHI
                    rRoJvFkYbsWhN7HqN5Ju/ApESU0SRsSZhkalZZvJdTgwbqnDeaKMiS+iaEtHJUqu+R1xdxtk6XY+IGvAFcKjXqupidyIxoqCRuI0h/JQsWFscvY
                    0xFcKFxKlVkRKlJu6ZIAMDA0OG+lhy0TONJN1k8wK8lILjsU23Jzjol78MG6lO+RRxwETLNDbAnl19yUyFC0cra7yZxP/7hTrYLWigFFE5ObTK4
                    /wAkf+wFZ1E1a5zT/wBFzQhCqZAsnyrkgxZ+di8OYehGbVo16MrAc11DUHz3DBawsiy7OMZN5RaX6MThAWtxJpKQKUGFaghY144oWN9ndqiOp6V
                    e1pdE4tFqANB2lR1DVodRtG4E12inJWZzNmrQ6GWQ31qW8IS0BxAa0OdeoNRU0rZLZQyu2JBMBkRz4riSC0aIdoHTApY01Gt8U6dMRDLwmNh1e0
                    NLg6tTWukDQ4g0K47YO533xsqzBGZGENsYF4JaAKnzTQihFK4qSyjOxIYDYhY+tal0I2PKBcWGG9Po2bzbPJOk+5eAdJrgLkigdc6xbWmsXNyLE
                    Ojxg3OkxrtWBJuau86lVrTpOo1KP9JlnUwJrj93/YyEMRHUa1tgPzZdSptbSrW5AoCuWyRoTYUs6pFjvoVYoOa0aoL3QzUAGlWebShsDewuKJR+
                    a2J4cutS7QTgMDXGy7ILaI8H/JlLctXaK8zJzyNIDSG0EHm5bIdKPGLHdBVwkc12tILYjbk6na6fpWO+6k4ubtSwmO8EYgBpBwxqLrWNaunZpMy
                    qQoYbptFNyZlONAqGixvRzajlFcCn35ciuOlUDdotp3KZmM04rqaM2RSnyQuL40dfV0Jk7MiOTUzt6n5EEchq9a3i9ZR1MMdtIslJKbgRGip0Ha
                    wcK/o7Qu3w4WpwPOPFIQM1CG0iRmuOothub0/0hBTmXzShHEg8geP/AEXDLZfibjN26HVHa7LVXEHyzdXeEnwNNZTiezS8k8EIela7jFpvsHcmt
                    Ie9X+7Wm19K9bBMvL5vHuWW1xf6fPsOIFRfS5iKqYlZ54s1zOQ1ae+iipfNRlBpDqud607ZmrB1Fw+sfFclbZJS4T8e5bMQktY+SSGVIxt5I3i/
                    RUpWHORdb2nZWnqAUaM24Xz3dYpQZswvnP6xXNLY6nKaX/PuVx0vlJWFPH4z28yUfOsIoSCohubkH5z+sV4/N2F853WPisHsVX9zx7lf8bY+cYV
                    bBvSQvGthba7q2UPEyMwYPf0nxSP5LHz39Yplav7vj3NkovmyfpBBqKdA9YXEXgzr7B6qKFhZMbWmnE6xS8fJjAMX9Yq0djrPXe+CfhT5j6EITT
                    pVr0JxEyg061AsyeyuLusUuclM/S67lplKvOp4EnC+tyS/KDdqY5Fjh+V6j0M/t2rluS4f6XWd4pPN2WazK1G1vJnEk/Lt2rr2fZ5wndyuc20Tg
                    4NJF/QhC7zgBfPPuixHsynNxGPIIiNGjUj+zQbimBvjuGxfQywTO6RbEytOOeWhrYjLEGpPFoOG0UO1UqK6L0/UQub+VGabhMjhCakEChqTU4Ux
                    5dSvLMrNDQ1hbfDSIcb8tT2qoTjpaGRoNaDfyjUltQQ7R22IselMpmYeQGML9GlWljjQnoqL0tZIOys1dnUtFqy+Q3MfdztIXHk7RiDsTqLEYyw
                    5QFQ82ZOZDtHQozziHAEE8hp5WGCtk3BieTWoAbUurr1DRv3rrpxbs1oTjjhaZItmKmpNNwO5KtjjRPL6lX2zVNadQJsUpVaqkYVKqZPwogoLBL
                    OjXUbBiAgLuJUFVUTOUtCVZGRw6i+GQIpKhooSr4yVlo4UK+MlpeOs2jTkTjoyatjXTV8dNmzAqqstEnGRUoIiiocYJZsULCZpFD/hPxZLMiKLM
                    VKsjBYsvYkmvuvIr0wEcbUOmt6xZZII7gmhN8UjMTRrhVM3R3ags7NnTBD5kNnCB9BpgFodS4BoSAdhoOgJzMvsoNr4lSbE6vUqzlvKs+1ui1jC
                    4kjSadLRHI4gFy6adJvRFZtJ3Ze4RunhI2qhsmZmkMUaXFrC9zngNGGnohoJJx2KYM4AfOe7VsHQtJUZR4mbalwLIH70yyIf/l8f7G79u1MIMwx
                    1RsxFrcvSls1gPyqaCn9TP7dq0jGxz1VoaIhCFY5QWE54zUvCylOOjXrHY0ijjVolZeuDht3rdlkOU4IdlCfrQ/07LEA/2SX2qVHFoaUvUcS0tL
                    R4NYTWuYbXFMNtfKqE1bAawFrQBfAa6lSD6sb5OGwKCiTJ0sfFdVKNmbySsS8GGGCugSaYkntSU/PgDyXUOFAK/wAknAj6QoXE9qaxpPY0866kr
                    s53orI4HlbiuD5Otcw5YnzSTzdll0WkCr6biVpY52OYU8R+CnkKfcSobT2X7F4IpCjAmUcmWZk2Na5MyBgoBs24Y4JVk3VZunYspk1xxLwJsKvu
                    jFesmaays3TNFMsrpkJERm11KEM6Nq442Fnuy6mWZsUbUoIm9Vtk4NqXE4NqwqUzeEie4X9JLQ4v6Srpmt67E4Nq5ZU2bJosQiD5y5ixW0xqoJs
                    +ERJ9u2iydNl00OpibATMz4TGamRtBTIxrq8aNy+9SJ6FNEncmuUNA1q0V3DYmMOMdtkrFdWwN1vTptPQiVRNanTZghvkgmlsdm7HUu2zhc0ODH
                    aqg6QIrapGITMRnQ6uc0ONKclF22dpUuBNq0beoxuBiujdXXcxdTUcRZ0wxpEUBtW512Ut7nk4YuU3E1tKkYEfLNris9bliK+aDw9wY0mkOoAtY
                    NcBa5AruKv/ALmmWGTOUNNooRKUeNWlww0qbq1VHhs7GNRto1hCELIwBZBlYn8oT/8Ajs/6kutfWPZdjsZPT7nuDRw8O5w/+pLq9O19TWl6gfMU
                    Grl5VXpyP5eFiplz2RYdWODhQGxuKioqNVlBx2AEg1J1Lqgtbo3nwG3HA02HqXsbKLnCmrYEjDhsJuacoUhKS7BcFp5bLpimcUm7jOUjvdVocWk
                    ijTS1dVV5k3Jc0I5fGfVtKUDi4u2W29ynBNAWLWc4TyFOhwpQC2ptuxJRu0+hC00IOZboGjmm+Bt2JSGWi5aen1JXLsZzgA2EKj4wtbZRQ8GZpj
                    Va30MmtR9EnDegFO1RL8o0N6p22GXarL05NY8WFN+9Q0+RTCxKHlKox7krDnlFR8mOxbgNdbJKEXDWO9Z68yLtE7xlo/mk+PBQczH1Gp31SXCUw
                    Kq2icTLOJlu0dK7ZGFa6Xaq215KdQ3miq43LxqE02KDXyj3di7MVw11/G9Q/GSDZdumOftWUoGqqEqXkg+VTAbefYuoYJsXXtfl2qKZMU2bcT2h
                    D57Vq/GoKmAtvOpIPfo2BJ5fxdccPXZ0+pRkWcOFUrItLqknyR08w1q6plXV5IfwY+5L8ZTKJFNwD5NRY4kG6TLDvPNRaKNiHNjrjhNTTwruTzJ
                    09R7i4NcAARXmFLplLSkRxsQOUpfLZeGNY1zNKhcXtr8ZxGiG66UOG1VnLBFs1pLE7Mg8tSsLhDoaVC6paPMJJBJrs3K6+43Dc3KMUHVLCn2owt
                    YLOYryXU0tEAVcSKAahUV1rRfcWmIb56IIelRssAXOdXSPCecB8WuxcN76m1ThY2tCEKDnBfNvum5ShNypOscT57aUcQK8WgNqW0oaFq+klHR8h
                    yz3F74MNziaklrSSd5IUNXJjKzPm7N3L8rBiaTo2iwsu3Rf59qlwaCDuOoWT2czpki4lsX9R472r6A97kp6PC6jfBHvclPR4XUb4LSnNwVkaOq7
                    WPm12XZXVF59F3gnMLOWWA/O/qv9lbVnlm6GweFlmMYWVL2tgQXlzNZaHsN240GIrros4c+axhxZV42OlZdvczuWq2qa6GTVyvDOeV+lHVf7KUZ
                    nbKj5X9V3sqzQMqR2/nZOXdvZDht7CwhSMHK0A+dLNb/owT3NVs3Povz7kWKeM65I4xjyaD+/RTWYy7IOdpaVD/di47bNWjwo8q75ODzwYY/cTp
                    kvLH5OB9lC9lM3PoiHFMzFuX5QjRMY03Q4nspOFluWBqYpcBgNCID92lFrLMnS5+Rg/ZQvZSzcky5+Qg/ZQvZTOT7fn3IwIyeNliUcPz31eCi25
                    9BNos7KU8mLzCHF6SS262ZuRJf0eD9jD9ldtyBLejwfsofspm59EHBMwaYjwjg8u+q71heR4bQ1p0XhpFQ4seAbkWcW0N2nDYVvb83JVwIMtBIO
                    I4KH7KZtzHyeDXizDTAEuc3qOJbrOpVe0yfJfn3I3SMOlphjRQu59F3glo01DHmRdLlZEFOlq3k5vy3o8H7KH7K4dkKW9HhfZQ/ZUZiXYndo+fz
                    ON+dTcA7wXPHmj43YfBb67I0v9BB+yh+yknZLl/oYP2UL2VG/kRu0YMJ9mt56HeC7GU2U/OgfVf7K298hLj5KD9lC9lNosGWHycH7GF7Cb+Q3aM
                    YZPwNcWv1X+CfyWcMuwkF5IIpYOBB1HDlWmRpiVHyUI8kCEf3ExjZShDzJRjuWFAaPupv5EqmkUF+WpUtpwprqqx9N4NGm+9LSWc8uw2foit6h5
                    HY31K0R5qZd5kvKwxtdChuP3AFxAhzJIBiQXEkAMhycsSSTQNFWYkqcxIKCRDzuckg5zXtmHN0Qata2KA62B8jHeobLucUtHLCGBuiA0CriaVrU
                    mnlG56da+h8i5owWwWiYhwokXFzuChNAJ+KAxgBAwrS+NsA/GbEn6PC6jPBUnVlNWZqpWPluBPwWmmk03GDXX5LVtbo3rSvcQmobp+KATpOl6hp
                    aRQNiioFRS2k3pWt+9qT9HhdRvgl5PI8vCdpw4TGOoRVrQ00NKiw3DoWfKwc2x+hCEKghCaxYzgSLIBwWjYuTAb80dCbcYduRxh25ALGUh/Mb0B
                    UHLOZMURnGVbDMJ3lBrnlmgT5zQAw1ZrGypGACu5ju3I4d25AUOBmPOa4kBnIYr/3Wp5DzCj/GmYf1YB/eiq4cYduRxh25AVdvufD401E+rDgt+
                    81yXhZhQhjMTB54I+7CCsPGHI4w5AQzcyJfXEmD/rvH3aL33jSmszB/3c0O6IFMcYcjjDkBFNzJkh8SKeWZmT3xV2My5H6EnliRT3vUlxhyOMOQ
                    Eb7y5D0dvWef3ke8uQ9GZ0u9pSXGHLzhnbT2ICP95kj9AByOiDucvDmZJfROHJGjDuepLjDkcYcgIp2ZMmdUYck1NDuirz3kyup0wP8AdTB+88q
                    W4w5HGHICGdmVA1RZgf6ul99pTeJmGw4TUcc0ue+ErDxhyOMOQFYdmGdUy760KGfu6KbxMxI+qYh88F47RFVv4w5HGHIChx8xprU6C768RvfDd3
                    qWzSzSMJ5izLWF4tDaHF7Wgjynklo8s4YWFdpVm4w5ecYduQDgSkP5jegLsQG/NHQmgmHbl7xl25APA0bF0mPGXbkrLxSTdAOUIQgBcOgtNyF2h
                    AJ8A3Z2lHAN2dpSiEAnwDdnaUcA3Z2lKIQCfAN2dpXnAN2dpSqEAlwDdnaUcA3Z2lKoQCXAN2dpRwDdnaUqhAJcA3Z2lHAN2dpSqEAlwDdnaUcA
                    3Z2lKoQCXAN2dpRxduztKVQgEuAbs7SjgG7O0pVCAS4BuztKOLt2dpSqEAlxduztKOLt2dpSqEAlxduztKOLt2dpSqEAlxduztKOLt2dpSqEAlx
                    duztK6ZCAwC7QgBCEID//2Q=="
				alt="sample99" />
		</div>
		<figcaption>
			<h5>Television</h5>
			<h3>${tv.brand}</h3>
		</figcaption>
		<footer>
			<div class="date">${tv.price}</div>
				<button>add basket</button>
		</footer>
	</figure>
</c:forEach>