.class public final Lcom/google/gdata/model/gd/StructuredPostalAddress$MailClass;
.super Ljava/lang/Object;
.source "StructuredPostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/StructuredPostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MailClass"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final BOTH:Ljava/lang/String; = "http://schemas.google.com/g/2005#both"

.field public static final LETTERS:Ljava/lang/String; = "http://schemas.google.com/g/2005#letters"

.field public static final NEITHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#neither"

.field public static final PARCELS:Ljava/lang/String; = "http://schemas.google.com/g/2005#parcels"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#both"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#letters"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#neither"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://schemas.google.com/g/2005#parcels"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress$MailClass;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/gdata/model/gd/StructuredPostalAddress$MailClass;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
