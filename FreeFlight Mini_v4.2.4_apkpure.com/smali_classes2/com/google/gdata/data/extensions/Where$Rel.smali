.class public final Lcom/google/gdata/data/extensions/Where$Rel;
.super Ljava/lang/Object;
.source "Where.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final EVENT:Ljava/lang/String;

.field public static final EVENT_ALTERNATE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.alternate"

.field public static final EVENT_PARKING:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.parking"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/data/extensions/Where$Rel;->EVENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
