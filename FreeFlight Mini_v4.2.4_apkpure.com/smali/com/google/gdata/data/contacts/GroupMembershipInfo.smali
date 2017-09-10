.class public Lcom/google/gdata/data/contacts/GroupMembershipInfo;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GroupMembershipInfo.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "groupMembershipInfo"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/String; = "deleted"

.field private static final HREF:Ljava/lang/String; = "href"

.field static final XML_NAME:Ljava/lang/String; = "groupMembershipInfo"


# instance fields
.field private deleted:Ljava/lang/Boolean;

.field private href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "deleted"    # Ljava/lang/Boolean;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->setDeleted(Ljava/lang/Boolean;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->setHref(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->setImmutable(Z)V

    .line 69
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 145
    const-class v1, Lcom/google/gdata/data/contacts/GroupMembershipInfo;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 147
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 149
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
    .line 161
    const-string v0, "deleted"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    .line 162
    const-string v0, "href"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 171
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 173
    check-cast v0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;

    .line 174
    .local v0, "other":Lcom/google/gdata/data/contacts/GroupMembershipInfo;
    iget-object v3, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->getHref()Ljava/lang/String;

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
    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 181
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 182
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 185
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 154
    const-string v0, "deleted"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v0, "href"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public setDeleted(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleted"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->throwExceptionIfImmutable()V

    .line 88
    iput-object p1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->throwExceptionIfImmutable()V

    .line 116
    iput-object p1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{GroupMembershipInfo deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->deleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->href:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "href"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/GroupMembershipInfo;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method
