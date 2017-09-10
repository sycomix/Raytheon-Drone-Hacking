.class public final Lcom/google/gdata/data/extensions/Who$Rel;
.super Ljava/lang/Object;
.source "Who.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Who;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
