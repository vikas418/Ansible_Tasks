# Ansible Assignment 1

## Below are the Commands & Images that executed to complete the Assignment💯 

### Creating NinjaTeam (ex.team1) :+1: 
~~~
ansible server -i host -m group -a  "name=team1 state=present" -b
~~~
![team1 group](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/9820618c-4449-4c1d-a1b8-a958843e34f1)

### Adding User Nitish to Group team1 :+1: 
~~~
ansible server -i host -m user -a "name=Nitish state=present group=team1" -b
~~~
![Nitish added to team1](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/dd4fb93c-6f69-4c51-91a4-1942b15e5bfa)

### Giving Access to User to access the Home Directory :+1: 
~~~
ansible server -i host -m file -a "path=/home/Nitish mode=0750" -b
~~~
![Other User Same Team Read | Execute](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/7dbd7521-c90f-42a6-b8ec-f11a380c09f1)

### Giving Access to All User to access the Home Directory :+1: 
~~~
ansible server -i host -m file -a "path=/home/Nitish state=directory owner=Nitish group=team1 mode=0750" -b
~~~
![Permissions to home directory](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/a83d7690-a441-4489-94d2-2da8d52f3528)

### Home Directory of user with two shared Directories :+1: 
~~~
ansible server -i host -m file -a "path=/home/Nitish/team state=directory  mode=770" -b
~~~
![Two Shared Directory ](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/326de2fc-c185-4a8d-96ee-aba2b71b76bd)

### Changing User Shell :+1: 
~~~
ansible server -i host -m user -a "name=Nitish shell=/bin/bash" -b
~~~
![Shell Change](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/33ac480b-1b1b-4fde-8482-8b60aa3d8e55)

### Changing User Password :+1:
~~~
ansible server -i host -m user -a "name=Nitish password={{ '123 | password_hash( 'sha512' ) }}" -b
~~~
![Password to Nitish](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/277c0f5b-ba6c-4065-b0f6-8d1e55a7ef67)

### Listing the User 👍 
~~~
ansible server -i host -m command -a "cat /etc/passwd"  -b
~~~
![List Users](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/ba610d49-7bf5-4716-a7ad-667a7142ba2a)

### Listing the Group 👍 
~~~
ansible server -i host -m command -a "cat /etc/group"  -b
~~~
![List Group](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/40eecbe5-e09b-494c-9428-0f665a525248)

### Deleting the User 👍 
~~~
ansible server -i host -m user -a "name=Nitish state=absent"  -b
~~~
![Delete User Nitish](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/7468a24e-836b-4a69-8d13-7dfa0cbee281)

### Deleting the Group 👍 
~~~
ansible server -i host -m group -a "name=Ninja state=absent"  -b
~~~
![Group Delete Ninja](https://github.com/OT-MyGurukulam/Ansible_Batch26/assets/149520276/ac9299e7-a0e6-4e7e-ba28-4674a5ebf6b8)

