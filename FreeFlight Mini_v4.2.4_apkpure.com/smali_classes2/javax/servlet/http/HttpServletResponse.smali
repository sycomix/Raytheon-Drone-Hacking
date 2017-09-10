.class public interface abstract Ljavax/servlet/http/HttpServletResponse;
.super Ljava/lang/Object;
.source "HttpServletResponse.java"

# interfaces
.implements Ljavax/servlet/ServletResponse;


# static fields
.field public static final SC_ACCEPTED:I = 0xca

.field public static final SC_BAD_GATEWAY:I = 0x1f6

.field public static final SC_BAD_REQUEST:I = 0x190

.field public static final SC_CONFLICT:I = 0x199

.field public static final SC_CONTINUE:I = 0x64

.field public static final SC_CREATED:I = 0xc9

.field public static final SC_EXPECTATION_FAILED:I = 0x1a1

.field public static final SC_FORBIDDEN:I = 0x193

.field public static final SC_FOUND:I = 0x12e

.field public static final SC_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final SC_GONE:I = 0x19a

.field public static final SC_HTTP_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final SC_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final SC_LENGTH_REQUIRED:I = 0x19b

.field public static final SC_METHOD_NOT_ALLOWED:I = 0x195

.field public static final SC_MOVED_PERMANENTLY:I = 0x12d

.field public static final SC_MOVED_TEMPORARILY:I = 0x12e

.field public static final SC_MULTIPLE_CHOICES:I = 0x12c

.field public static final SC_NON_AUTHORITATIVE_INFORMATION:I = 0xcb

.field public static final SC_NOT_ACCEPTABLE:I = 0x196

.field public static final SC_NOT_FOUND:I = 0x194

.field public static final SC_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SC_NOT_MODIFIED:I = 0x130

.field public static final SC_NO_CONTENT:I = 0xcc

.field public static final SC_OK:I = 0xc8

.field public static final SC_PARTIAL_CONTENT:I = 0xce

.field public static final SC_PAYMENT_REQUIRED:I = 0x192

.field public static final SC_PRECONDITION_FAILED:I = 0x19c

.field public static final SC_PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final SC_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final SC_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final SC_REQUEST_TIMEOUT:I = 0x198

.field public static final SC_REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final SC_RESET_CONTENT:I = 0xcd

.field public static final SC_SEE_OTHER:I = 0x12f

.field public static final SC_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SC_SWITCHING_PROTOCOLS:I = 0x65

.field public static final SC_TEMPORARY_REDIRECT:I = 0x133

.field public static final SC_UNAUTHORIZED:I = 0x191

.field public static final SC_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final SC_USE_PROXY:I = 0x131


# virtual methods
.method public abstract addCookie(Ljavax/servlet/http/Cookie;)V
.end method

.method public abstract addDateHeader(Ljava/lang/String;J)V
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addIntHeader(Ljava/lang/String;I)V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encodeURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encodeUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendRedirect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDateHeader(Ljava/lang/String;J)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setIntHeader(Ljava/lang/String;I)V
.end method

.method public abstract setStatus(I)V
.end method

.method public abstract setStatus(ILjava/lang/String;)V
.end method
