/*
	Quest contain information about items needs to complete them.
	And reward in caps
*/
/datum/bounty_quest
	var/name = "Default Quest Name"
	var/desc = "Default Quest Description"

	/* This items needs to complete this quest */
	var/list/target_items = list()

	/* How many caps will spawned after quest complete */
	var/caps_reward = 10

	var/end_message = "Contract complete!"

/datum/bounty_quest/proc/ItsATarget(var/target)
	var/result = 0
	for(var/Itm in target_items)
		if(Itm == target)
			result = 1
			break
	return result


/datum/bounty_quest/qst_0
	name = "�������� � �������."
	desc = "�����! �� ��� ������ ������������ � ������������ ��������, � ������ ��� ������� ����. ������ �� �������� ��. � ����� �� �������� 300 ������, ���� �� ��������� ��� 5 �������."
	end_message = "�������! �������� �������! ������� ���� ������!"
	target_items = list(/obj/item/weapon/gun = 5)
	caps_reward = 100