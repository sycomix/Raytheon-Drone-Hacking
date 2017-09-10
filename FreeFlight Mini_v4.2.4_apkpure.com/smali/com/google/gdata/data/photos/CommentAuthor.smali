.class public Lcom/google/gdata/data/photos/CommentAuthor;
.super Lcom/google/gdata/data/Person;
.source "CommentAuthor.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "author"
    nsAlias = "atom"
    nsUri = "http://www.w3.org/2005/Atom"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "author"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/Person;-><init>()V

    .line 43
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 164
    const-class v1, Lcom/google/gdata/data/photos/CommentAuthor;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 166
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 167
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 168
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 47
    const-class v0, Lcom/google/gdata/data/photos/CommentAuthor;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/Person;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 51
    const-class v0, Lcom/google/gdata/data/photos/CommentAuthor;

    const-class v1, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/photos/CommentAuthor;

    const-class v1, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/photos/CommentAuthor;

    const-class v1, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getNickname()Lcom/google/gdata/data/photos/GphotoNickname;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoNickname;

    return-object v0
.end method

.method public getThumbnail()Lcom/google/gdata/data/photos/GphotoThumbnail;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    return-object v0
.end method

.method public getUsername()Lcom/google/gdata/data/photos/GphotoUsername;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoUsername;

    return-object v0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUsername()Z
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setNickname(Lcom/google/gdata/data/photos/GphotoNickname;)V
    .locals 1
    .param p1, "nickname"    # Lcom/google/gdata/data/photos/GphotoNickname;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/CommentAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setThumbnail(Lcom/google/gdata/data/photos/GphotoThumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/google/gdata/data/photos/GphotoThumbnail;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/CommentAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsername(Lcom/google/gdata/data/photos/GphotoUsername;)V
    .locals 1
    .param p1, "username"    # Lcom/google/gdata/data/photos/GphotoUsername;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/CommentAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CommentAuthor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

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
    .locals 0

    .prologue
    .line 152
    return-void
.end method
