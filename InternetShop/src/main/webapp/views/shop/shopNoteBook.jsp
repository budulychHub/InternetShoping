<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="css/shop/backpack.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>NoteBook</h1>

<c:forEach var="noteBook" items="${noteBooks}">
	<figure class="snip1518">
		<div class="image">
			<img
				src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhIWFRUWGBUVFxUXGBggGBcXFRYWFhkYGBUg
                HiggGBolHRYWITEiJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi8iIB0tLS8rLjctLTArLy0tLzg3LS0rNysrLS0uLy0rMS01LS0tKysvLS4rL
                S0rKy0tLS0rK//AABEIAL0BCgMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUDBgcCAQj/xABIEAABAwEEBQgECgkEAwEAAAABAAIDEQ
                QSITEFBkFRYQcTIjJxgZGhUrHB0RQjJDNCcnOSsvAVQ2KCorPC0uFTZHSTJVTxFv/EABgBAQEBAQEAAAAAAAAAAAAAAAACAQME/8QAIxEBAQACAQQ
                CAgMAAAAAAAAAAAECEQMSITFBE1EEgRSh4f/aAAwDAQACEQMRAD8A7iiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICKFbNLwRfOTMafRvC990Y+
                SprVrpCPm45ZeIAa3xeQfJBsyLRbTrbaXdRkcQ3mr3eHRHrVbPbZZPnZnv4Vut+62g8aoOgWvSsMXzkrGndUXvujFVVo1tiHzbHybjS6097sfJacw
                AZADsXq+gu7RrPaHdURxjvc4d5oPJVlptksnzk0jt4vUb91tAonO1NBidwxPgMV9kBGYI24gg07CgvdR7S7n5YrxuCNrw0nAOvOBpuwp4LdVoWoh+
                VzfYt/GVvqAiIgIiICIiAiIgIiICIiAiIgIiICKu0lp6zQfPWiNh9EuF7uZmfBazb+U2yNwiZLMd4bdb3l9HeDSg3dFye2cpNqfhFHFCN5vSO8TdH
                kVSWvTlpm+dtEjhtAddae1jaNPgg7Hb9N2eH52eNh9EuF77oxPgqK16/WcfNMkl3Gl1vi6jv4VzCJoGQAXqS2xs672t4Eivgg3S1a8Wl/UbHEO97v
                E0Hkqq0aTml+dmkfvF6jT+62g8lpsWm7NCCGF76kuwG07amnisE+tzv1cQHFxJ8hT1q5x5X0nqjc4wBkAFkMoAqTQbzkua2jWK1O/WXRuYAPPPzVZ
                LI55q9znHe4knxK6TgvtnXHTrTrHZo+tM08GVd+EFVlo11YK83DI+m11Gg+s+S0qKIk4K7sVnAGIqdy34sYdVq70Vpy0Wh/VbGwYmgJdwFTh5LY7J
                Z72Lqu7SSPDJU+j2hjQAMcz2q1s9pOQWXGemthsdGigw4Kv05J8YPqj1uWSy3ioemzSQfVHrcueTYtdQD8rl+xb+MroC53ydn5VL9k38a6IoaIiIC
                IiAiIgIiICIiAiIgIiIC45yqacmNsNnbK9scbWVY1xaHOe0OJdQ9LBwFDhguxr8/69OEukbTiQOcawkbA0sYT3AFbJu6LdKOMBu4eS9fDGD6VezHz
                US32VrZXNYS5oNA45njXdWqxFoGeHavVj+NPNrleROdpUDqsJ7TT3rE/Sspyo3sGPnVRI3td1Kv+oC78IKnWfRNof1YHZVq8tbgOBN7upVdPj4sZu
                s6sqgzWiR3We48Kmnhko/Nq7i1dtDnBrrjAWlwdRzgcW4AdEk9IH/K+6Z1fMEbXmV7nF7WUuhrTU44YnYdqrHLCzePhNll1VHcXwtUoxryY100zaK
                Wr6xmKlGPDistkYA7FTY14tRdEwHa4hrRxKn6CitVbzmuug4NLcS7fSmAoo1rfenZT6GbtxcRka4YUx7VsejLE9wdcjNY/RYSRVxGLagCtF4eTLu7
                YxbWF8oAL2DEVALA0UyzAAOJyrVW0TKEdFg39I+IOSh2KzO5txlrG1hqa0qwkYG6ekCRgBma0yWNtsfS6HXWg1w3nbQ9U4nLOpqpm74VV8bU0YNrX
                bXIe9U2l5qvzr0QPMrzG6uAwG/f/AIUW34OpwHtTJkbJybH5VL9kPxhdIXNOTI/KpfsRT/sp710tQ0REQEREBERAREQEREBERAREQF+Z9Y7SHWid5
                cQHzymrW3jiZHAAVG26v0paJLrXOP0QT4Cq/K1vfUNLqYlxNSc8N2P0iqx8sqBPOcqvrxo3+Ee9X+oVlY+WV0jQ66wUvNDqFzsxXI9E4rXLq2/USD
                4u0v8AjK0YGllQKgPPScCKDFerDdycstSNvo0CgB9ngsMGlYoXlz2c5QNddALq0di0tG/DszUbSuiS57zzLmsaxlA9/Sa4vvEmmdW0p20yKsbaI+Z
                6F7nKG9uGBywG2irOdcuNiMMpjdy7UWqUsjCXgPDr0j2tLB0AbjWijjQCjRhswWPXKZ7xEH/SmvHFudyVxwbgMcVdNiEL3AysPQYbwcGgVLsKk7Kd
                yotOWpkskLWSMeQ57jdINOgRjTtWcGFxwkvn/W55XK7UpiXgxK1dAs8WhpXg3Y3EgFwbQ3nUFcABXHecOK9WVmPlE3fChMSzWGyF72sGZNOA4lbRo
                bV8Ok5udjg4h10hsoZhi284tbdypQXjjsFHGfYLFM97Y4oIIw1zrxMcjw8NNAC5rjdqa4kk0INDgF5c/wAnH07Y8d9rPVzREVmjc0jnC43z0Klzq1
                JJBI3AAnKgpvk6SfExwknklF115rGiPOpIFA448TTvVVprTcUHxcD3OkoGm453NtIAqQCT4DDYTsOsz2p0ji+R1SduHgvPMLl3q96Wdt0m6Z1XUDQ
                atYCSG8anrOptPkKAIX1x2KpY291st1dm7ip8BrlgN+wLprTFlFIcfzVQ9IO6WdcB6ypDObGbi7g0U8yoWlZQXijbougU7yuefhUbPyWO+VzfY/1t
                XUVynknfW1zcIf62H2rqy5NEREBERAREQEREBERAREQEREFTrbPcsVqfuglp23HU81+eLLY78cj6E82GGoLRQvkDRUng05bc8F3TlPtFzRloO8Rs+
                /Kxp8iVxOxTAQubQFziz6Bc6gvuwOQ2YZ48FWF1TW1KLJXYfzx2q40Tbp4I3xwltJHAuBbUmlKY5U95WGuOIodv/wA2KwslpkDLrHANvtkpdJ6Tci
                aNPhkrxzsvlGWMseZ7Zb5Kkvkq5waei0Av2AuDetwrVfX6tW17HPkmyvVY+SUvJbhSl27nhiRkvkltmJxc8Ev5w0rS/TrU2HipMNttUzXWZktWure
                Y50bb1SHGrnUJxI2qLzXfe+v7dMMOLpmp39/WlJNq69r5GvcwOjuXhebU85dIugkF56QrQGm1XUegorNaomGcfGRvdecDSoMYDRdDqGjjnhhsWePk
                60g5t7m2Rs3ukYM/qk0Vvq3qW6zWpzLSICTBfBHTdUyAdEOZ1/izv2rr8s6ZMZ3+05Yy5X6TbCIbO9zXEtmfDI5l4OIbIKjoPNGPaKZ4ZVyKgWNs4
                jNA+RxLaPvBoIB6TnOb0nOFagGoHSOJW5P0PZo4blxt2+ZbtBda7CjgDXmz0WmraYhahprSkUDiIWtFcSWir3nvxOWZXOS5XudouZbRzFJJ5WlkbS
                aOHTreqHk1wdmagCpwqVqmkNYZXXhG97WkUvOIvluJu3gOi3E8cczkoAE89HFhpWoGwHi89Z1P8Kxbq7I0C/XsYKnxyC644SeU22qOJlM8TtPs7FI
                s9me4X3C4Po3jgB/UTwrRXcLbOwkXek3A3jjUZ9/Yo9vtzTk0HicvDb4K2IQA2VPHILKyYe5RZHuwc8mhwBINOwKRZQxx6TzQejT1JRMinNKCg4j3
                5rDpiO45v7TGu7bxdiO6ngV6ayL6N4nioWknm/0jjQeG5cuTwqNv5JT8sl+xP4411lci5IT8sl+wd/MjXXVxUIiICIiAiIgIiICIiAiIgIiINE5Zr
                Rd0eG+nNG3wDn/0LkMdoHNBgjeXXrxILrpFygF0ba1xXSuXSekNmZ6Uj3/cZd/rXK5LQLobzbatLquxq6rqitCMhgqx9srHzlTuG4Fbjoi3MbYw4i
                ToODXOZSgvSAhpNcDdcSMMamhwIWmF3ADgK+0rumreibM2ywsdYL5McPOOMTS18hYyrzXrYmtabCr4+Scd2zLj+SacyjkYWyOlDy92MZGRJcbxcdu
                zIHIjCtRTQWyKTnIXT/B6PdUil6Q1FK4j6ueG3A4dKmsUTnta2JjW3G9VrRcJIrWjKHAtoKgkkjZVVcUDbpIu4ZZY4jZtzXn/ABuLHk5M8pe8vft9
                /tHReHVvuKeaV73sbFbITCAy82S86pbhQXSA4OFCcgSeAW0aLDBa5zETdMcRoXX7hdJN0Wkk3RRrXU2XtmSgWVrSDedTE0wzxd/jxWbV4fG2g/Yt8
                Gud/Uu38b49Xq3+nW88z7a0tNLve5tGODT6RFadjKUJWru0QwPN4SSuOJe7osx8z4rbqCh/OG1YHtG5dJdJ0ojBdILCRTbmcMqEnBYhbnA1deNMrx
                zVtOzcq+WAlUxrttDa9Brq41pUgk45kL5BZnEGoINMK0GPGuxXxDslGkaRsVdTNK6SwykUdSnaFWc2WSYjEZgHP85rYm2yQHNZLRbi9t1zGO7WtqO
                w0w7lm61WaPmEho3A+jvCwaUFH0O4e1So2XDVjQ07xnjxVbpF5v47go5PDY3PkePy2T7B/wDMiXYlxnkad8ukH+3f/MhXZlwUIiICIiAiIgIiICIi
                AiIgIiIOO8uc9bRZY/RZI7772j+grnDKObVtDiMQHbRlXJbjy0T3tJBtepBG3vLpH/1Bak22PAd8bUuIJqMSQ0NGNNwA7ggxc2dxW6R8o+kWtDWmM
                BoDR8XsAoNq0/4a85lfROVouZdcZw8OPMh7QKO5qO9SlMyFC/8A0c1Kc6MBsazIdyr52XyS4nGle7Be7Iwx3+be5t9jo30p0mOpeacMjQJLcd9PbZ
                e/lMdrBOAAZqDMdFu3aOitj1R0/CyOQzzsD3Pr0iASAxoBoPDuWpWiLnAwPc5wjYI2ZdFgJIbgOJz3rF+jmfteP+FVzv2mR0x2tFj/APZj8f8ACxy
                a02PP4QzEmueGAxrTGpqub/o1m93iPcvv6NZvd4j3LOpunQXaz2P/ANhvg73LA/WWxf64+6/+1aJ+jI97vEe5P0bHvd4j3Leumm6P1lsf+uPuSf2q
                NJrHZD+u/gk/tWp/o1m93iPcvJ0aze7xHuTrpps0mn7L/q/wSf2rG3TNncaNc5xpWgjkJpvoG5LX3WQHNzzhdz2bsslkhvMcHNllDg3mwb+IZ6Ark
                3gt+Smlw3TEJ6rnHsY/+1V9stLXuq01GWIIxGeBVeLM0Cgy7G+u7Ve2AAUHb4qblaadB5Fz8vk/48n82BdqXEeRV3/kJB/tpf5tnXblLRERAREQER
                EBERARfHOAxJoosuk4W5yN7jX1IJaKlk1mgBo0lx3DP7ufkoUutgrQRuHFwIHi66g2dFo1p1ud6TGmtG9OM3jwAde9qr7Vp6Z1OlTMnNxO67GGFx+
                8EHN+VG039K2rHBpjaOxsMYPnVa02q3bWayiZ7nytN43aEtcHHZgDSi1K0WS6MHEY0zFD5GiDG2u5ZBXcVHdeFDfNDsow07TQIJ3em04A9UVx3iop
                5oJYJ3HwK+iTgfAqP8KeNrK4EdF1CCAQbwdTasnwx4aHERmuwX67M8wM96DMJR+QV6Ew3heHW9zQCWtxpheIOOWBbiOIqFkfbS0BzoxQ4YSNPldqg
                CYbx4hfRKN48V9NuaBUxmm8Fh9uC9m1sAq6J4G8tbTHjeQeb6VWTn4qVLHAb7mHiCvnO2fs/cf7kGIleS9SQbP6QH3x6wvtyD/UaP36etBDL15LlO
                +DQnKUf9rfesdqssbGlxeTTIBwNTuCCEXLyXLEZBvXkyDePFB0HkTd/wCSf/xpv5tmXdFwbkSr+kzxss382zLvKAiIgLHNO1gq9zWje4gDxK1flIs
                tvks7RYCQ8PvSBr7r3MDXC62uBxIJxHV21XELbpCaOS7aWvZJjhMHNcey/QuHEVCD9A2nWuxsztDD9SrvwgqstGvsA6kcj+2jR6yfJcZh0sNo8/ep
                0OlGHaR3e5B0ibXmV3UjY3tq4+xQ5NZLQ/OUj6oA8wKrUYbcw5PHipkcyC6Nrc7Fzi48SSsUtnY+lb2H7bvUSR5Ku+EEZCvf+T5L220O2mnd7xRBL
                k0cHUrLIabCIiPDm6+a8OsZBwmjAFOiY6ZcY5IyAvLJQc6ntNR4Vp5KQycDh3UQYo4ZL1WyRvOOUkrRjwrIf4lGkskoqXR1NKVY6Jx+9LHePjTgrA
                yg7j5rBIG7Ggdgp6kGu21paD8S9hOZLI3HDixy1+0SNFcTU7XNeO7HCi2+2gbz94+9a9bWcfV7kFC57aYFtccnY0OYzy7liLcMid1aEAbcKZ8ahSL
                VENyr5IRsFOxBnZEKGta5NbQ4135k7N6+BmOIyzqMaAYA9U08FDAIyJHeV9Mj/SPfiPBBJA2DyOQ3UqRRZXkjAZVN3MHaesaE+Hcoz7XIQAXYDLAY
                dm7uXuC2Oaa3GE51Ixrvxqgzs6LSCa12GuBH7NDTvXmJorU9wNOGY91FiFsdXLD9lxHn7qLO22MA6Mbga1vVqa8MQPIoPkodUDHEY7iD39Id/is7n
                uAoyoFMhUeQNFH+F3+u5zdmVT96lfUs4tUTR0SON5tSTwF3DxNUHqyxvYLxB3nMg1FcSMB2ApJaGjpOAHY44/umoPgoc1rc7qi6N9KHuAwCwiPGpx
                J2nNBmmtrnZAAby1tfILEAVljiJNAKlZgxrc+kdwyHa7b2BBijhJ7NpOQ71lazYxpc44A0zP7LfaV5tEwbQvOfVaBifqt3cTh6lvXJxq1aLQ4Shoh
                j2Pd1j9XaTxwCDZOSjUy0Web4ZaKNLopIwyvTo98bhebkKBh21xxAXU1HsVlEbQ0VPE5lSEBERB4kaSMDTitP1o1etE7S3nw9p+g5uHtC3NfCEH57
                0vyc2phJZCO2M+wU9S1e16KtcJ6TXj6za+ZC/VRiG5YJrCx2BAPaEH5SGkZW9aOvZWvu8lIh080Zh7OzH3L9F2/U2yS9aBnaBQ+S1nSPJNZX9QuZ4
                EIOW2bWLdP3OHtI9qs7Np55yuP7D7iVa6S5HJBUxyNdwNQVq2kOTi2xY824je3FBsDNOj6cZ8ipUWmYT9It7aj/AAueyWW2QmhLxTYa+o4L43TM7e
                uxru1vuog6fHbGOyeHd4K+vk/IXNo9Px/ThI4g+wj2qdZ9NQnqzPZ2g08iUG22l6p7UsUVuLurPG/gSK+GBXqUSbYz2j3IK20NUGVitJW76jtHuqo
                z4d1PEe1BWOYvBYp77OdoPgsRjQRbiXFJ5pfebQRri+hikc2vcdnJyCCNcX26pD4qHOqyR2Y0qSGt9I5dg2k8AgiBiyvjawXpDdGdPpHblsXq0Wi6
                DzI6Wxzs+NNjfziqu1TMHXJkkq8XRsDvSdsJwwoSKbKoLUvqCBRrBi41oP3nn87lHshkneIrJGZHnC/dwH1Wn1u8FearaiWvSJa+b4uAZClB+4zaf
                2iu56r6pWexsDYmAb3HrO7Sg0bUjkqbGRNbDzspxuk1aDxP0iurWaytYAAAAMAAszWgL0gIiICIiAiIgIiICIiD4WheHQhZEQQbToyN4o5jXdoBVD
                b9Q7HJnC0cW4LbEQcs0lyRQO+be5vaAVqmkuR+dvzZa/yPmu/LyWhB+XNIag2yLOJ9OwkKo+C2mHIvb2VHqX63dADsUG16Dhk68bHdoCD8uM0/amd
                Y3hucAfOlfNZ49aB+sgYeyrfeu96Q5OrHJ+qun9k+xavpLkfjPzclODh7Qg5vFpqyuzbJGd4oR66+SlMkgf1bSzskFPxBWmkuSS0N6gD+w+wrWLfq
                Vaos43juKC5/Rjji0MeN7Xe4+xR5LEW9aN48/YFrDrFPGagEHeKg+IWeHTtrj/WP7zX8VUF1cb6VO0H2VX2R7dsrKdvsAUCPXCT9ZHG/tYQfEH2LF
                bdYYZM7M1v1HOHrBQWDrRG3qfGHeQQ0dxoXHw71gt8oZ0rS8tdsjFDKRuuZRj61OAKqpdPP6tmiEOy+CXSnfR56n7oBWyalcmc9rIkmrHGTUuPWd2
                D2lBR2N1ptjhDZYyxp+iyt4jfJJmRwwbwXW9ROSiOG7JaQJJMw36Df7it71a1VgsjAyJgbvP0ncSVsLGAIMNnsoaKAKQiICIiAiIgIiICIiAiIgIi
                ICIiAiIgIiICIiAiIg8lgWN9macwsyIKa2at2eTrwsPdj4ha7pDkzskmTS3sPvW9og5DbeR1h6ktO1qgs5F216U2HBq7ZRfLqDn2r3JlZLOQ65zjh
                tfiB2NyW9WeyhowCkURAREQEREBERAREQEREH//Z"
				alt="sample101" />
		</div>
		<figcaption>
			<h5>NoteBook</h5>
			<h3>${noteBook.brand}</h3>
			<footer>
				<div class="date">
				${noteBook.price}
				</div>
				<form:form action="buyNoteBook/${noteBook.id}" method="get">
						<button>add basket</button>
				</form:form>
			</footer>
		</figcaption>
	</figure>
</c:forEach>