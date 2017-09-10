.class public Lcom/google/gdata/data/contacts/ContactGroupEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ContactGroupEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/contact/2008#group"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/contacts/ContactGroupEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/contact/2008#group"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/contact/2008#group"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/ContactGroupEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/contacts/ContactGroupEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 69
    return-void
.end method


# virtual methods
.method public addExtendedProperty(Lcom/google/gdata/data/extensions/ExtendedProperty;)V
    .locals 1
    .param p1, "extendedProperty"    # Lcom/google/gdata/data/extensions/ExtendedProperty;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtendedProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 73
    const-class v0, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 77
    const-class v7, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchId;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 80
    const-class v7, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchInterrupted;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "interrupted"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    const-class v7, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchOperation;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "operation"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 88
    const-class v7, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchStatus;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 92
    const-class v7, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Deleted;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "deleted"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 95
    const-class v7, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/ExtendedProperty;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extendedProperty"

    const/4 v5, 0x1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 99
    const-class v0, Lcom/google/gdata/data/contacts/ContactGroupEntry;

    const-class v1, Lcom/google/gdata/data/contacts/SystemGroup;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getBatchId()Lcom/google/gdata/data/batch/BatchId;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchId;

    return-object v0
.end method

.method public getBatchInterrupted()Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0
.end method

.method public getBatchOperation()Lcom/google/gdata/data/batch/BatchOperation;
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperation;

    return-object v0
.end method

.method public getBatchStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 1

    .prologue
    .line 202
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchStatus;

    return-object v0
.end method

.method public getDeleted()Lcom/google/gdata/data/extensions/Deleted;
    .locals 1

    .prologue
    .line 234
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Deleted;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/ExtendedProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const-class v0, Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemGroup()Lcom/google/gdata/data/contacts/SystemGroup;
    .locals 1

    .prologue
    .line 292
    const-class v0, Lcom/google/gdata/data/contacts/SystemGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/SystemGroup;

    return-object v0
.end method

.method public hasBatchId()Z
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchInterrupted()Z
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchOperation()Z
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchStatus()Z
    .locals 1

    .prologue
    .line 225
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 256
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExtendedProperties()Z
    .locals 1

    .prologue
    .line 283
    const-class v0, Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSystemGroup()Z
    .locals 1

    .prologue
    .line 314
    const-class v0, Lcom/google/gdata/data/contacts/SystemGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setBatchId(Lcom/google/gdata/data/batch/BatchId;)V
    .locals 1
    .param p1, "batchId"    # Lcom/google/gdata/data/batch/BatchId;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->removeExtension(Ljava/lang/Class;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchInterrupted(Lcom/google/gdata/data/batch/BatchInterrupted;)V
    .locals 1
    .param p1, "batchInterrupted"    # Lcom/google/gdata/data/batch/BatchInterrupted;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->removeExtension(Ljava/lang/Class;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchOperation(Lcom/google/gdata/data/batch/BatchOperation;)V
    .locals 1
    .param p1, "batchOperation"    # Lcom/google/gdata/data/batch/BatchOperation;

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->removeExtension(Ljava/lang/Class;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchStatus(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 1
    .param p1, "batchStatus"    # Lcom/google/gdata/data/batch/BatchStatus;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->removeExtension(Ljava/lang/Class;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDeleted(Lcom/google/gdata/data/extensions/Deleted;)V
    .locals 1
    .param p1, "deleted"    # Lcom/google/gdata/data/extensions/Deleted;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->removeExtension(Ljava/lang/Class;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSystemGroup(Lcom/google/gdata/data/contacts/SystemGroup;)V
    .locals 1
    .param p1, "systemGroup"    # Lcom/google/gdata/data/contacts/SystemGroup;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const-class v0, Lcom/google/gdata/data/contacts/SystemGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->removeExtension(Ljava/lang/Class;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ContactGroupEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactGroupEntry "

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
    .line 319
    return-void
.end method
