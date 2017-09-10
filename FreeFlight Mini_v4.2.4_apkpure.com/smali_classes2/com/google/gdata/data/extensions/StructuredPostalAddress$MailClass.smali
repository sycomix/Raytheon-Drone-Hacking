.class public final Lcom/google/gdata/data/extensions/StructuredPostalAddress$MailClass;
.super Ljava/lang/Object;
.source "StructuredPostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/StructuredPostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MailClass"
.end annotation


# static fields
.field public static final BOTH:Ljava/lang/String; = "http://schemas.google.com/g/2005#both"

.field public static final LETTERS:Ljava/lang/String; = "http://schemas.google.com/g/2005#letters"

.field public static final NEITHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#neither"

.field public static final PARCELS:Ljava/lang/String; = "http://schemas.google.com/g/2005#parcels"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
