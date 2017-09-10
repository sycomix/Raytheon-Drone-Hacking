.class public Ljavax/mail/Quota;
.super Ljava/lang/Object;
.source "Quota.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Quota$Resource;
    }
.end annotation


# instance fields
.field public quotaRoot:Ljava/lang/String;

.field public resources:[Ljavax/mail/Quota$Resource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaRoot"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public setResourceLimit(Ljava/lang/String;J)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 101
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/mail/Quota$Resource;

    iput-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 103
    iget-object v8, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    new-instance v0, Ljavax/mail/Quota$Resource;

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    aput-object v0, v8, v9

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 107
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v0, v0, v6

    iget-object v0, v0, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v0, v0, v6

    iput-wide p2, v0, Ljavax/mail/Quota$Resource;->limit:J

    goto :goto_0

    .line 106
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Ljavax/mail/Quota$Resource;

    .line 113
    .local v7, "ra":[Ljavax/mail/Quota$Resource;
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    iget-object v1, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v1, v1

    invoke-static {v0, v9, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    array-length v0, v7

    add-int/lit8 v8, v0, -0x1

    new-instance v0, Ljavax/mail/Quota$Resource;

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    aput-object v0, v7, v8

    .line 115
    iput-object v7, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    goto :goto_0
.end method
