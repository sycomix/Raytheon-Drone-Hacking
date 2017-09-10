.class public final Lcom/google/gdata/data/extensions/Who$AttendeeStatus;
.super Lcom/google/gdata/data/ValueConstruct;
.source "Who.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Who;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttendeeStatus"
.end annotation


# static fields
.field public static final EVENT_ACCEPTED:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.accepted"

.field public static final EVENT_DECLINED:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.declined"

.field public static final EVENT_INVITED:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.invited"

.field public static final EVENT_TENTATIVE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.tentative"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "attendeeStatus"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
