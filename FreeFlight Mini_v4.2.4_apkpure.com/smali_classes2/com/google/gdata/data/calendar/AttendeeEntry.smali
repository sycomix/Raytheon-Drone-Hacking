.class public Lcom/google/gdata/data/calendar/AttendeeEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "AttendeeEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/calendar/AttendeeEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 39
    const-class v0, Lcom/google/gdata/data/calendar/CalendarEventEntry;

    invoke-static {}, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 41
    return-void
.end method

.method public getSendEventNotifications()Z
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/calendar/AttendeeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    .line 50
    .local v0, "send":Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSendEventNotifications(Z)V
    .locals 1
    .param p1, "send"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->TRUE:Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/AttendeeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 60
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;->FALSE:Lcom/google/gdata/data/calendar/SendEventNotificationsProperty;

    goto :goto_0
.end method
