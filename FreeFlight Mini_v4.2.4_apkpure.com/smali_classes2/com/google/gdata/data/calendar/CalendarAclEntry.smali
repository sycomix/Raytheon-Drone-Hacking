.class public Lcom/google/gdata/data/calendar/CalendarAclEntry;
.super Lcom/google/gdata/data/acl/AclEntry;
.source "CalendarAclEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/acl/AclEntry;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 41
    const-class v0, Lcom/google/gdata/data/calendar/CalendarAclEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/acl/AclEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 45
    const-class v0, Lcom/google/gdata/data/calendar/CalendarAclEntry;

    const-class v1, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getSendAclNotifications()Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarAclEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    return-object v0
.end method

.method public hasSendAclNotifications()Z
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarAclEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setSendAclNotifications(Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;)V
    .locals 1
    .param p1, "sendAclNotifications"    # Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const-class v0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarAclEntry;->removeExtension(Ljava/lang/Class;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/CalendarAclEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CalendarAclEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
