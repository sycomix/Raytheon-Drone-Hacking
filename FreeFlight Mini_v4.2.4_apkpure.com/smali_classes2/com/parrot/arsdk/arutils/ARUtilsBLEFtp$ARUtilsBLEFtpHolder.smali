.class Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$ARUtilsBLEFtpHolder;
.super Ljava/lang/Object;
.source "ARUtilsBLEFtp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ARUtilsBLEFtpHolder"
.end annotation


# static fields
.field private static final instance:Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;-><init>(Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$1;)V

    sput-object v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$ARUtilsBLEFtpHolder;->instance:Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$ARUtilsBLEFtpHolder;->instance:Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    return-object v0
.end method
