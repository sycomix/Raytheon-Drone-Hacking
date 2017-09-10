.class public Ljavax/mail/Quota$Resource;
.super Ljava/lang/Object;
.source "Quota.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# instance fields
.field public limit:J

.field public name:Ljava/lang/String;

.field public usage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "usage"    # J
    .param p4, "limit"    # J

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    .line 69
    iput-wide p2, p0, Ljavax/mail/Quota$Resource;->usage:J

    .line 70
    iput-wide p4, p0, Ljavax/mail/Quota$Resource;->limit:J

    .line 71
    return-void
.end method
