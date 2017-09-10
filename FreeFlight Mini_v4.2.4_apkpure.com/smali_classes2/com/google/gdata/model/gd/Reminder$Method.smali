.class public final Lcom/google/gdata/model/gd/Reminder$Method;
.super Ljava/lang/Object;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Method"
.end annotation


# static fields
.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final ALL:Ljava/lang/String; = "all"

.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final SMS:Ljava/lang/String; = "sms"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "all"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/Reminder$Method;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/gdata/model/gd/Reminder$Method;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
