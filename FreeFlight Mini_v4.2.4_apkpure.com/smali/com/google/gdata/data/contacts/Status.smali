.class public Lcom/google/gdata/data/contacts/Status;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Status.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "status"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation


# static fields
.field private static final INDEXED:Ljava/lang/String; = "indexed"

.field static final XML_NAME:Ljava/lang/String; = "status"


# instance fields
.field private indexed:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "indexed"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Status;->setIndexed(Ljava/lang/Boolean;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Status;->setImmutable(Z)V

    .line 61
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 108
    const-class v1, Lcom/google/gdata/data/contacts/Status;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 110
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 111
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 112
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
    .line 123
    const-string v0, "indexed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    .line 124
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 128
    if-ne p0, p1, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 135
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Status;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/google/gdata/data/contacts/Status;

    .line 135
    .local v0, "other":Lcom/google/gdata/data/contacts/Status;
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/gdata/data/contacts/Status;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIndexed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasIndexed()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Status;->getIndexed()Ljava/lang/Boolean;

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
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 141
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 142
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 144
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 117
    const-string v0, "indexed"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public setIndexed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "indexed"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Status;->throwExceptionIfImmutable()V

    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Status indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Status;->indexed:Ljava/lang/Boolean;

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
    .line 96
    return-void
.end method
