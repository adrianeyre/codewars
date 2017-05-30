def find_the_key(messages, secrets)
  code = []
  (0...messages.length).each do |m_index|
    (0...messages[m_index].length).each do |l_index|
      m_letter = messages[m_index][l_index]
      s_letter = secrets[m_index][l_index]
      if(m_letter != " " && (m_letter!=s_letter))
        code << [m_letter,s_letter].sort
      end
    end
  end
  code.uniq!.sort.flatten.join
end