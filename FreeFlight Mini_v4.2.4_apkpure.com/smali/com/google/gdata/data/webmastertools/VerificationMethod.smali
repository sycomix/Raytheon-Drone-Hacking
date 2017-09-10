.class public Lcom/google/gdata/data/webmastertools/VerificationMethod;
.super Lcom/google/gdata/data/AbstractExtension;
.source "VerificationMethod.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "verification-method"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;
    }
.end annotation


# static fields
.field private static final FILECONTENT:Ljava/lang/String; = "file-content"

.field private static final INUSE:Ljava/lang/String; = "in-use"

.field private static final METHODTYPE:Ljava/lang/String; = "type"

.field public static final METHOD_NODE:Ljava/lang/String; = "verification-method"


# instance fields
.field private fileContent:Ljava/lang/String;

.field private inUse:Z

.field private methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "verification-method"

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/AbstractExtension;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->METATAG:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static matchesNode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "verification-method"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    const-string/jumbo v1, "type"

    const-class v2, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    sget-object v3, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->METATAG:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    invoke-virtual {p1, v1, v5, v2, v3}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    iput-object v1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    .line 205
    const-string v1, "in-use"

    invoke-virtual {p1, v1, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    .line 206
    const-string v1, "file-content"

    invoke-virtual {p1, v1, v4}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    .line 207
    invoke-virtual {p1, v4}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 209
    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/VerificationMethod;->sameClassAs(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;

    .line 104
    .local v0, "r":Lcom/google/gdata/data/webmastertools/VerificationMethod;
    iget-object v2, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    iget-object v3, v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    invoke-virtual {v2, v3}, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-boolean v2, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    iget-boolean v3, v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    if-ne v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFileContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    return-object v0
.end method

.method public getInUse()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    return v0
.end method

.method public getMethodType()Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->hashCode()I

    move-result v0

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 191
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    invoke-virtual {v1}, Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "in-use"

    iget-boolean v1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Z)V

    .line 193
    const-string v0, "file-content"

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setFileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileContent"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->fileContent:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setInUse(Z)V
    .locals 0
    .param p1, "inUse"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->inUse:Z

    .line 147
    return-void
.end method

.method public setMethodType(Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;)V
    .locals 0
    .param p1, "method"    # Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->methodType:Lcom/google/gdata/data/webmastertools/VerificationMethod$MethodType;

    .line 133
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/VerificationMethod;->value:Ljava/lang/String;

    .line 176
    return-void
.end method
