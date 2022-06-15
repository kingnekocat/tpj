package com.team.friend;

public class FriendB {
			
			private String id;
			private String nickname;
			private String age;
			private String gender;
			private String region;
			private String kakao;
			
			
			public String getId() {
				return id;
			}
			public void setId(String id) {
				this.id = id;
			}
			public String getNickname() {
				return nickname;
			}
			public void setNickname(String nickname) {
				this.nickname = nickname;
			}
			public String getAge() {
				return age;
			}
			public void setAge(String age) {
				this.age = age;
			}
			public String getGender() {
				return gender;
			}
			public void setGender(String gender) {
				this.gender = gender;
			}
			public String getRegion() {
				return region;
			}
			public void setRegion(String region) {
				this.region = region;
			}
			public String getKakao() {
				return kakao;
			}
			public void setKakao(String kakao) {
				this.kakao = kakao;
			}
			
			public FriendB() {
				// TODO Auto-generated constructor stub
			}
			public FriendB(String id, String nickname, String age, String gender, String region, String kakao) {
				super();
				this.id = id;
				this.nickname = nickname;
				this.age = age;
				this.gender = gender;
				this.region = region;
				this.kakao = kakao;
			}
			
			
}
