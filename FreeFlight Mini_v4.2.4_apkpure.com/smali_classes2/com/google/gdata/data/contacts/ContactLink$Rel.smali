.class public final Lcom/google/gdata/data/contacts/ContactLink$Rel;
.super Ljava/lang/Object;
.source "ContactLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/ContactLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final CONTACT_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#photo"

.field public static final EDIT_CONTACT_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#edit-photo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
