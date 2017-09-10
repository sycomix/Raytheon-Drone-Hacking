.class public Ljavax/mail/FetchProfile;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/FetchProfile$Item;
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Vector;

.field private specials:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    .line 137
    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    .line 138
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    .line 164
    :cond_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public add(Ljavax/mail/FetchProfile$Item;)V
    .locals 1
    .param p1, "item"    # Ljavax/mail/FetchProfile$Item;

    .prologue
    .line 150
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    .line 152
    :cond_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljavax/mail/FetchProfile$Item;)Z
    .locals 1
    .param p1, "item"    # Ljavax/mail/FetchProfile$Item;

    .prologue
    .line 171
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 206
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 205
    .local v0, "s":[Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getItems()[Ljavax/mail/FetchProfile$Item;
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 188
    const/4 v1, 0x0

    new-array v0, v1, [Ljavax/mail/FetchProfile$Item;

    .line 192
    :goto_0
    return-object v0

    .line 190
    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljavax/mail/FetchProfile$Item;

    .line 191
    .local v0, "s":[Ljavax/mail/FetchProfile$Item;
    iget-object v1, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method
