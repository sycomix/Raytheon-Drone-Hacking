.class public Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "SendAclNotificationsProperty.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "sendAclNotifications"
    nsAlias = "gCal"
    nsUri = "http://schemas.google.com/gCal/2005"
.end annotation


# static fields
.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "sendAclNotifications"


# instance fields
.field private value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->setValue(Ljava/lang/Boolean;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->setImmutable(Z)V

    .line 61
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 106
    const-class v1, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 109
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 110
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 111
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    .line 123
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 133
    check-cast v0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;

    .line 134
    .local v0, "other":Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;
    iget-object v1, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 140
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 141
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 116
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->throwExceptionIfImmutable()V

    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SendAclNotificationsProperty value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/calendar/SendAclNotificationsProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
