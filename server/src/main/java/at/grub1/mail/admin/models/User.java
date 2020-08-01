package at.grub1.mail.admin.models;

import com.yahoo.elide.annotation.Include;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author Bernhard Halbartschlager
 */
@Entity
@Include(rootLevel = true, type = "user")
public final class User {
    @Id
    public long id;
}
