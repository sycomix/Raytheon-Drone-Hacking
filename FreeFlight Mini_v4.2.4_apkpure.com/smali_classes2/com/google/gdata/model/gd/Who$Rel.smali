.class public final Lcom/google/gdata/model/gd/Who$Rel;
.super Ljava/lang/Object;
.source "Who.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/Who;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final EVENT_ATTENDEE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.attendee"

.field public static final EVENT_ORGANIZER:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.organizer"

.field public static final EVENT_PERFORMER:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.performer"

.field public static final EVENT_SPEAKER:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.speaker"

.field public static final MESSAGE_BCC:Ljava/lang/String; = "http://schemas.google.com/g/2005#message.bcc"

.field public static final MESSAGE_CC:Ljava/lang/String; = "http://schemas.google.com/g/2005#message.cc"

.field public static final MESSAGE_FROM:Ljava/lang/String; = "http://schemas.google.com/g/2005#message.from"

.field public static final MESSAGE_REPLY_TO:Ljava/lang/String; = "http://schemas.google.com/g/2005#message.reply-to"

.field public static final MESSAGE_TO:Ljava/lang/String; = "http://schemas.google.com/g/2005#message.to"

.field public static final TASK_ASSIGNED_TO:Ljava/lang/String; = "http://schemas.google.com/g/2005#task.assigned-to"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#event.attendee"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#event.organizer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#event.performer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://schemas.google.com/g/2005#event.speaker"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://schemas.google.com/g/2005#message.bcc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://schemas.google.com/g/2005#message.cc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://schemas.google.com/g/2005#message.from"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://schemas.google.com/g/2005#message.reply-to"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://schemas.google.com/g/2005#message.to"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://schemas.google.com/g/2005#task.assigned-to"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/Who$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/gdata/model/gd/Who$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
