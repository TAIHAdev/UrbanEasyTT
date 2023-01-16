<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>


    
<script src='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.js'></script>
<link href='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.css' rel='stylesheet' />
 


  </head>
  <body>

    <header
      class="bg-white px-4 sm:px-10 lg:px-24 border-b shadow-sm transition duration-1000"
    >
      <div class="flex h-20 justify-between items-center">
        <img
          src="https://i.postimg.cc/8cdjfvRm/black-logo.png"
          alt="logo"
          class="hidden h-12 lg:block"
        />
        <img
          src="https://i.postimg.cc/8cdjfvRm/black-logo.png"
          alt="logo"
          class="hidden w-12 sm:block lg:hidden"
        />
        <div
          id="search-bar-small"
          class="border rounded-full py-1 px-2 w-3/4 flex items-center md:w-[24rem] shadow-sm hover:shadow-md"
        >
          <div
            class="w-1/3 text-center text-sm font-medium placeholder:text-slate-800 flex flex-col items-center md:flex-row md:justify-center border-r"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-5 h-5 inline md:mr-1"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M12.75 3.03v.568c0 .334.148.65.405.864l1.068.89c.442.369.535 1.01.216 1.49l-.51.766a2.25 2.25 0 01-1.161.886l-.143.048a1.107 1.107 0 00-.57 1.664c.369.555.169 1.307-.427 1.605L9 13.125l.423 1.059a.956.956 0 01-1.652.928l-.679-.906a1.125 1.125 0 00-1.906.172L4.5 15.75l-.612.153M12.75 3.031a9 9 0 00-8.862 12.872M12.75 3.031a9 9 0 016.69 14.036m0 0l-.177-.529A2.25 2.25 0 0017.128 15H16.5l-.324-.324a1.453 1.453 0 00-2.328.377l-.036.073a1.586 1.586 0 01-.982.816l-.99.282c-.55.157-.894.702-.8 1.267l.073.438c.08.474.49.821.97.821.846 0 1.598.542 1.865 1.345l.215.643m5.276-3.67a9.012 9.012 0 01-5.276 3.67m0 0a9 9 0 01-10.275-4.835M15.75 9c0 .896-.393 1.7-1.016 2.25"
              />
            </svg>
            Wherever
          </div>
          <div
            class="w-1/3 border-r text-center text-sm font-medium placeholder:text-slate-800 flex flex-col items-center md:flex-row md:justify-center"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-5 h-5 inline md:mr-1"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z"
              />
            </svg>

            Whenever
          </div>
          <div
            class="w-1/3 text-center text-sm font-medium placeholder:text-slate-800 flex flex-col items-center md:flex-row md:justify-center"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-5 h-5 inline md:mr-1"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z"
              />
            </svg>

            Guests
          </div>
          <button id="search-button-small">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-7 h-7 p-1.5 cursor-pointer inline bg-gray-500 text-white rounded-full"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z"
              />
            </svg>
          </button>
        </div>
        <div class="relative">
          <button
            class="w-8 cursor-pointer focus:ring-2 focus:ring-offset-2 focus:ring-sky-400 rounded-full"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-8 h-8"
              id="user"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z"
              />
            </svg>
          </button>
          <div
            id="drop-down-menu"
            class="absolute hidden right-0 z-10 w-48 rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none"
          >
            <div class="border-b">
              <a
                href="#"
                class="block px-4 py-2 text-sm text-gray-700 font-medium"
                >Your Account</a
              >
              <a
                href="#"
                class="block px-4 py-2 text-sm text-gray-700 font-medium"
                >Messages</a
              >
              <a
                href="#"
                class="block px-4 py-2 text-sm text-gray-700 font-medium"
                >Notification</a
              >
              <a
                href="#"
                class="block px-4 py-2 text-sm text-gray-700 font-medium"
                >Trips</a
              >
              <a
                href="#"
                class="block px-4 py-2 text-sm text-gray-700 font-medium"
                >Wish Lists</a
              >
            </div>
            <a href="#" class="block px-4 py-2 text-sm text-gray-700"
              >Switch to Hosting</a
            >
            <a href="#" class="block px-4 py-2 text-sm text-gray-700"
              >Sign out</a
            >
          </div>
        </div>
      </div>
      <div
        id="search-bar"
        class="hidden md:border md:rounded-full w-3/4 mx-auto py-4 px-8 my-1 flex flex-col md:flex-row shadow-sm hover:shadow-md sm:my-4"
      >
        <div
          class="md:w-[35%] ml-2 items-center md:items-stretch flex flex-col space-y-2 md:border-r mb-1"
        >
          <label class="text-xs font-medium" for="destination"
            >Your next destination</label
          >
          <input
            class="w-full text-center outline-none text-sm placeholder:text-sm border md:text-left border-slate-800/50 rounded-md py-1.5 md:border-none md:py-0"
            placeholder="Search destination"
            type="text"
          />
        </div>
        <div date-rangepicker class="flex flex-col md:flex-row md:w-[40%]">
          <div
            class="md:w-[50%] ml-2 items-center md:items-stretch flex flex-col space-y-2 md:border-r mb-1"
          >
            <label class="text-xs font-medium" for="destination"
              >Check in</label
            >
            <input
              id="check-in"
              name="start"
              class="md:w-full text-center outline-none text-sm placeholder:text-sm border md:text-left border-slate-800/50 rounded-md py-1.5 md:border-none md:py-0"
              placeholder="Add Dates"
              type="text"
            />
          </div>
          <div
            class="md:w-[50%] ml-2 items-center md:items-stretch flex flex-col space-y-2 md:border-r mb-1"
          >
            <label class="text-xs font-medium" for="destination"
              >Check out</label
            >
            <input
              id="check-out"
              name="end"
              class="text-center md:w-full outline-none text-sm placeholder:text-sm border md:text-left border-slate-800/50 rounded-md py-1.5 md:border-none md:py-0"
              placeholder="Add Dates"
              type="text"
            />
          </div>
        </div>
        <div
          class="md:w-[25%] ml-2 items-center md:items-stretch flex flex-col space-y-2 mb-1"
        >
          <label class="text-xs font-medium" for="destination">Guests</label>
          <input
            class="text-center md:text-left md:w-full outline-none text-sm placeholder:text-sm border border-slate-800/50 rounded-md py-1.5 md:border-none md:py-0"
            placeholder="Add guests"
            type="text"
          />
        </div>
        <button>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            class="w-7 h-7 p-1.5 cursor-pointer inline bg-gray-500 text-white rounded-full"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z"
            />
          </svg>
        </button>
      </div>
    </header>
    <main class="h-screen">
      <div id="search-bar-back-drop" class="hidden absolute z-5 w-full h-screen bg-slate-800/30"></div>
      <div class="px-4 md:mx-10 lg:mx-20 xl:mx-40 2xl:mx-80 lg:px-24">
        <div class="font-medium text-xl">
          Nha Thuong in Quan 1, HCM, Vietnam
        </div>
        <div id="review" class="inline"></div>
        <div id="address" class="ml-4"></div>
        <div>
          <img src="" alt="" />
          <img src="" alt="" />
          <img src="" alt="" />
        </div>
        <div class="grid grid-cols-1 md:grid-cols-4 grid-rows-2 gap-2">
          <img
            src=<c:out value="${assets[0]}"/>
            alt=""
            class="h-full col-span-2 row-span-2 rounded"
          />
          <img
            src=<c:out value="${assets[1]}"/>
            alt=""
            class="h-full hidden col-span-1 row-span-1 rounded md:block"
          />
          <img
            src=<c:out value="${assets[2]}"/>
            alt=""
            class="h-full hidden col-span-1 row-span-1 rounded md:block"
          />
          <img
            src=<c:out value="${assets[3]}"/>
            alt=""
            class="h-full hidden col-span-1 row-span-1 rounded md:block"
          />
          <img
            src=<c:out value="${assets[4]}"/>
            alt=""
            class="hidden col-span-1 row-span-1 rounded md:block"
          />
        </div>

        <div class="flex flex-col space-y-3 sm:space-y-0 sm:grid grid-cols-12 grid-rows-2 mt-4 gap-x-4 pb-8 border-b">
          <div class="col-span-5 row-span-2">
            <div class="border-b">
              <div class="font-medium text-xl mb-2">
                Entire cottage hosted by
              </div>
              <div class="flex mb-2 flex-wrap">
                <div>3 guest</div>
                <span class="text-xs font-bold mx-2">.</span>
                <div>1 bedroom</div>
                <span class="text-xs font-bold mx-2">.</span>
                <div>1 bed</div>
                <span class="text-xs font-bold mx-2">.</span>
                <div>1 bath</div>
              </div>
            </div>
            <div class="my-2 border-b pb-3">
              <div class="flex items-center space-x-2 my-2">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 5.25a3 3 0 013 3m3 0a6 6 0 01-7.029 5.912c-.563-.097-1.159.026-1.563.43L10.5 17.25H8.25v2.25H6v2.25H2.25v-2.818c0-.597.237-1.17.659-1.591l6.499-6.499c.404-.404.527-1 .43-1.563A6 6 0 1121.75 8.25z" />
                </svg>
                <div>
                  <p class="text-sm font-medium">Great check in experience</p>
                  <p class="text-xs font-light">100% of recent guests gave the check-in process a 5 stars rating.</p>
                </div>                
              </div>
              <div class="flex items-center space-x-2 my-2">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m0 0l6.75-6.75M12 19.5l-6.75-6.75" />
                </svg>
                
                <div>
                  <p class="text-sm font-medium">Park for free</p>
                  <p class="text-xs font-light">This is one of the few places in the area with free parking</p>
                </div>                
              </div>
              <div class="flex items-center space-x-2 my-2">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                </svg>                
                <div>
                  <p class="text-sm font-medium">Free cancellation before 3:00pm on 6 Jan.</p>
                </div>                
              </div>
            </div>
            <div class="font-medium text-lg my-2">What this place offer</div>

            <div class="flex justify-between ">
              <div>
                <div class="flex items-center space-x-3 my-2">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M8.288 15.038a5.25 5.25 0 017.424 0M5.106 11.856c3.807-3.808 9.98-3.808 13.788 0M1.924 8.674c5.565-5.565 14.587-5.565 20.152 0M12.53 18.22l-.53.53-.53-.53a.75.75 0 011.06 0z"
                    />
                  </svg>
                  <div class="text-sm">Wi-Fi</div>
                </div>
                <div class="flex items-center space-x-3 my-2">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      d="M15.75 10.5l4.72-4.72a.75.75 0 011.28.53v11.38a.75.75 0 01-1.28.53l-4.72-4.72M4.5 18.75h9a2.25 2.25 0 002.25-2.25v-9a2.25 2.25 0 00-2.25-2.25h-9A2.25 2.25 0 002.25 7.5v9a2.25 2.25 0 002.25 2.25z"
                    />
                  </svg>

                  <div class="text-sm">Sercurity cameras on property</div>
                </div>
                <div class="flex items-center space-x-3 my-2">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M9 17.25v1.007a3 3 0 01-.879 2.122L7.5 21h9l-.621-.621A3 3 0 0115 18.257V17.25m6-12V15a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 15V5.25m18 0A2.25 2.25 0 0018.75 3H5.25A2.25 2.25 0 003 5.25m18 0V12a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 12V5.25"
                    />
                  </svg>

                  <div class="text-sm">Spare desktop</div>
                </div>
                <button
                  class="py-2 px-3 border border-slate-700 rounded-md my-4 text-sm hover:bg-slate-100"
                >
                  Show all 41 amentities
                </button>
              </div>
              <div class="hidden md:block">
                <div class="flex items-center space-x-3 my-2">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M6 20.25h12m-7.5-3v3m3-3v3m-10.125-3h17.25c.621 0 1.125-.504 1.125-1.125V4.875c0-.621-.504-1.125-1.125-1.125H3.375c-.621 0-1.125.504-1.125 1.125v11.25c0 .621.504 1.125 1.125 1.125z"
                    />
                  </svg>

                  <div class="text-sm">24" HDTV</div>
                </div>
                <div class="flex items-center space-x-3 my-2">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M8.25 21v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21m0 0h4.5V3.545M12.75 21h7.5V10.75M2.25 21h1.5m18 0h-18M2.25 9l4.5-1.636M18.75 3l-1.5.545m0 6.205l3 1m1.5.5l-1.5-.5M6.75 7.364V3h-3v18m3-13.636l10.5-3.819"
                    />
                  </svg>

                  <div class="text-sm">Modern house</div>
                </div>
                <div class="flex items-center space-x-3 my-2">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M12 12.75c1.148 0 2.278.08 3.383.237 1.037.146 1.866.966 1.866 2.013 0 3.728-2.35 6.75-5.25 6.75S6.75 18.728 6.75 15c0-1.046.83-1.867 1.866-2.013A24.204 24.204 0 0112 12.75zm0 0c2.883 0 5.647.508 8.207 1.44a23.91 23.91 0 01-1.152 6.06M12 12.75c-2.883 0-5.647.508-8.208 1.44.125 2.104.52 4.136 1.153 6.06M12 12.75a2.25 2.25 0 002.248-2.354M12 12.75a2.25 2.25 0 01-2.248-2.354M12 8.25c.995 0 1.971-.08 2.922-.236.403-.066.74-.358.795-.762a3.778 3.778 0 00-.399-2.25M12 8.25c-.995 0-1.97-.08-2.922-.236-.402-.066-.74-.358-.795-.762a3.734 3.734 0 01.4-2.253M12 8.25a2.25 2.25 0 00-2.248 2.146M12 8.25a2.25 2.25 0 012.248 2.146M8.683 5a6.032 6.032 0 01-1.155-1.002c.07-.63.27-1.222.574-1.747m.581 2.749A3.75 3.75 0 0115.318 5m0 0c.427-.283.815-.62 1.155-.999a4.471 4.471 0 00-.575-1.752M4.921 6a24.048 24.048 0 00-.392 3.314c1.668.546 3.416.914 5.223 1.082M19.08 6c.205 1.08.337 2.187.392 3.314a23.882 23.882 0 01-5.223 1.082"
                    />
                  </svg>

                  <div class="text-sm">Bug Free</div>
                </div>
              </div>
            </div>
          </div>
          

          <div class="col-span-3 row-span-1 shadow-md flex items-center rounded-md">
            <div class="flex flex-col items-center justify-between space-y-2">
              <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-4 h-4">
                  <path fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z" clip-rule="evenodd" />
                </svg>
                <div class="font-medium text-xs">218 reviews</div>                
                <span class="hidden text-xs ml-1 lg:block">(100% response rate)</span>
              </div>
              <div class="flex justify-center items-center space-x-3">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-1/4 rounded-full">
                <div class="text-sky-600 text-sm">TinDaKing</div>
              </div>
              <button class="text-white bg-gray-500 text-sm px-4 py-2 rounded-md">Contact host</button>
              <button class="text-gray-700 bg-white border border-slate-700 text-sm px-2 py-1 rounded-md">View profile</button>
            </div>
          </div>
          <div class="col-span-4 row-span-2 flex flex-col justify-center items-between border p-4 space-y-3 shadow-md">
            <div class="flex justify-between items-center">
              <div class="font-medium text-lg">$376.68 AUD total</div>
              <div class="flex ml-2">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-4 h-4">
                  <path fill-rule="evenodd" d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z" clip-rule="evenodd" />
                </svg>
                <div class="text-xs font-medium">4.80</div>                
                <span class="text-xs font-light hidden lg:block">(131 reviews)</span>
              </div>
            </div>
            <div class="border rounded-md flex flex-col ">
              <div date-rangepicker class="flex "> 
                <div class="inset-x-0 flex flex-col w-1/2 border-r border-b p-2">
                  <label class="font-medium text-xs" for="final-check-in">CHECK-IN</label>
                <input type="text" id="final-check-in" class="w-3/4 outline-none text-sm font-light" placeholder="date in">
                </div>
                <div class="flex flex-col w-1/2 border-b pt-2 pl-3">
                  <label class="font-medium text-xs" for="final-check-out">CHECK-OUT</label>
                <input type="text" id="final-check-out" class="outline-none text-sm font-light" placeholder="date out" >
                </div>
              </div>
              <div class="flex justify-between p-3 items-center">
                <div class="flex flex-col">
                  <label class="font-medium text-xs" for="final-guests">GUESTS</label>
                  <p class=" text-sm font-light">1 guest</p>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-4 h-4 inline">
                  <path fill-rule="evenodd" d="M12.53 16.28a.75.75 0 01-1.06 0l-7.5-7.5a.75.75 0 011.06-1.06L12 14.69l6.97-6.97a.75.75 0 111.06 1.06l-7.5 7.5z" clip-rule="evenodd" />
                </svg>
                
              </div>
            </div>
            <button class="text-white bg-gray-500 w-full py-2.5 rounded-md">
              Reserve
            </button>
            <div class="text-center font-light text-xs">You won't be charge yet</div>
            <div class="text-center font-light text-xs">Price shown is the total trip price, including
              additional fees and taxes.</div>
              <div class="space-y-2 pb-3 border-b">
                <div class="flex justify-between">
                  <div class="font-light decoration-1 underline text">$101.72 AUD x 3 nights</div>
                  <div class="font-light">$305.16 AUD</div>
                </div>
                <div class="flex justify-between">
                  <div class="font-light decoration-1 underline text">Cleaning fee</div>
                  <div class="font-light">$16.95 AUD</div>
                </div>
                <div class="flex justify-between">
                  <div class="font-light decoration-1 underline text">Service fee</div>
                  <div class="font-light">$54.57 AUD</div>
                </div>
              </div>
              <div class="flex justify-between">
                <div class="font-bold">Total</div>
                <div class="font-medium">$376.68 AUD</div>
              </div>
          </div>
        </div>
        <div class="my-3">
          <span class="font-medium">Location</span>
          <div class="font-medium text-sm">Binh Thanh, HCM, Vietnam</div>
          <div id='map' class="mt-3" style='width: full; height: 450px;'></div>
          
        
          
<script>
const lng = "<c:out value="${product.lng}"/>";
const lat = "<c:out value="${product.lat}"/>";
console.log(lat);
mapboxgl.accessToken = 'pk.eyJ1IjoiYXBpZXhwbG9yZXIiLCJhIjoiY2xiZzJ4ZmEyMGFrejN2bXV1YXRucnRkMCJ9.3KIUk-IF5zhcKaaPNEyQjQ';
const map = new mapboxgl.Map({
container: 'map', // container ID
style: 'mapbox://styles/apiexplorer/clccutn42000914o552o67bpk', // style URL
center: [lng, lat], // starting position [lng, lat]
zoom: 12, // starting zoom
});
const marker1 = new mapboxgl.Marker()
.setLngLat([lng, lat])
.addTo(map);
</script> 
        </div>
        <div class="border-b pb-4">
          <div class="font-medium">Reviews</div>
          <div>
            <div class="flex justify-between items-center space-x-4 md:space-x-20 ">
              <div class="w-1/2 space-y-2">
                <div class="flex justify-between items-center">
                  <span class="text-sm">Cleanliness</span>
                  <div class="w-1/3 flex items-center space-x-2">
                    <div class="bg-gray-300 rounded-full h-1.5 w-[95%] ">
                      <div class="bg-slate-700 h-1.5 rounded-full" style="width: 75%"></div>
                    </div>
                    <div class="text-xs font-medium">3.7</div>
                  </div>
                </div>
                <div class="flex justify-between items-center">
                  <span class="text-sm">Communication</span>
                  <div class="w-1/3 flex items-center space-x-2">
                    <div class="bg-gray-300 rounded-full h-1.5 w-[95%] ">
                      <div class="bg-slate-700 h-1.5 rounded-full" style="width: 80%"></div>
                    </div>
                    <div class="text-xs font-medium">4.1</div>
                  </div>
                </div>
                <div class="flex justify-between items-center">
                  <span class="text-sm">Check-in</span>
                  <div class="w-1/3 flex items-center space-x-2">
                    <div class="bg-gray-300 rounded-full h-1.5 w-[95%] ">
                      <div class="bg-slate-700 h-1.5 rounded-full" style="width: 100%"></div>
                    </div>
                    <div class="text-xs font-medium">5.0</div>
                  </div>
                  
                </div>
            </div>
            <div class="w-1/2 space-y-2">
              <div class="flex justify-between items-center ">
                <span class="text-sm">Accuracy</span>
                <div class="w-1/3 flex items-center space-x-2">
                  <div class="bg-gray-300 rounded-full h-1.5 w-[95%] ">
                    <div class="bg-slate-700 h-1.5 rounded-full" style="width: 70%"></div>
                  </div>
                  <div class="text-xs font-medium">3.5</div>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-sm">Location</span>
                <div class="w-1/3 flex items-center space-x-2">
                  <div class="bg-gray-300 rounded-full h-1.5 w-[95%] ">
                    <div class="bg-slate-700 h-1.5 rounded-full" style="width: 90%"></div>
                  </div>
                  <div class="text-xs font-medium">4.6</div>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-sm">Value</span>
                <div class="w-1/3 flex items-center space-x-2">
                  <div class="bg-gray-300 rounded-full h-1.5 w-[95%] ">
                    <div class="bg-slate-700 h-1.5 rounded-full" style="width: 60%"></div>
                  </div>
                  <div class="text-xs font-medium">2.9</div>
                </div>
              </div>
            </div>
            </div>
        </div>
        <div class="flex justify-between space-x-4 my-4">
          <div class="flex flex-col justify-between">
            <div class="h-32">
              <div class="flex items-center space-x-2">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-8 rounded-full">
                <div class="inline-flex flex-col">
                  <span class="text-sm font-medium">TinDaKing</span>
                  <span class="text-xs font-light">September 2022</span>
                </div>
              </div>
              <p class="text-sm">We really enjoy our stay and checkin was very easy!</p>
            </div>
            <div class="h-32">
              <div class="flex items-center space-x-2">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-8 rounded-full">
                <div class="inline-flex flex-col">
                  <span class="text-sm font-medium">TinDaKing</span>
                  <span class="text-xs font-light">September 2022</span>
                </div>
              </div>
              <p class="text-sm">We really enjoy our stay and checkin was very easy!</p>
            </div>
            <div class="h-32">
              <div class="flex items-center space-x-2">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-8 rounded-full">
                <div class="inline-flex flex-col">
                  <span class="text-sm font-medium">TinDaKing</span>
                  <span class="text-xs font-light">September 2022</span>
                </div>
              </div>
              <p class="text-sm">We really enjoy our stay and checkin was very easy!</p>
            </div>
          </div>
          <div class="flex flex-col justify-between">
            <div class="h-32">
              <div class="flex items-center space-x-2">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-8 rounded-full">
                <div class="inline-flex flex-col">
                  <span class="text-sm font-medium">TinDaKing</span>
                  <span class="text-xs font-light">September 2022</span>
                </div>
              </div>
              <p class="text-sm">We really enjoy our stay and checkin was very easy!</p>
            </div>
            <div class="h-32">
              <div class="flex items-center space-x-2">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-8 rounded-full">
                <div class="inline-flex flex-col">
                  <span class="text-sm font-medium">TinDaKing</span>
                  <span class="text-xs font-light">September 2022</span>
                </div>
              </div>
              <p class="text-sm">We really enjoy our stay and checkin was very easy!</p>
            </div>
            <div class="h-32">
              <div class="flex items-center space-x-2">
                <img src="https://i.postimg.cc/bvF64D2g/82101177.png" alt="" class="w-8 rounded-full">
                <div class="inline-flex flex-col">
                  <span class="text-sm font-medium">TinDaKing</span>
                  <span class="text-xs font-light">September 2022</span>
                </div>
              </div>
              <p class="text-sm">We really enjoy our stay and checkin was very easy!</p>
            </div>
          </div>
        </div>
        <button class="text-sm font-medium px-3 py-2 border border-slate-800 rounded-md hover:bg-gray-200">Show all 131 reviews</button>
      </div>
      <div >
        <div class="text-lg font-medium">Things to know</div>
        <div class="w-full flex justify-between my-4">
          <div class="flex flex-col space-y-2 items-start">
            <p class="text-sm font-medium">House rules</p>
            <p class="text-sm">Check-in: 3:00 pm - 12:00 am</p>
            <p class="text-sm">Check-out before 11:00 am</p>
            <p class="text-sm">2 guests maximum</p>
            <button class="text-sm decoration-1 underline font-medium">Show more <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-4 h-4 inline">
              <path fill-rule="evenodd" d="M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z" clip-rule="evenodd" />
            </svg>
            </button>
          </div>
          <div class="flex flex-col space-y-2 items-start">
            <p class="text-sm font-medium">House rules</p>
            <p class="text-sm">Check-in: 3:00 pm - 12:00 am</p>
            <p class="text-sm">Check-out before 11:00 am</p>
            <p class="text-sm">2 guests maximum</p>
  
            <button class="text-sm decoration-1 underline font-medium">Show more <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-4 h-4 inline">
              <path fill-rule="evenodd" d="M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z" clip-rule="evenodd" />
            </svg>
            
            </button>
          </div>
          <div class="flex flex-col space-y-2 items-start">
            <p class="text-sm font-medium">House rules</p>
            <p class="text-sm">Check-in: 3:00 pm - 12:00 am</p>
            <p class="text-sm">Check-out before 11:00 am</p>
            <p class="text-sm">2 guests maximum</p>
  
            <button class="text-sm decoration-1 underline font-medium">Show more <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-4 h-4 inline">
              <path fill-rule="evenodd" d="M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z" clip-rule="evenodd" />
            </svg>
            
            </button>
          </div>
        </div>
      </div>
    </main>
    <script src="https://unpkg.com/flowbite@1.5.4/dist/datepicker.js"></script>
    <script src="./assets/js/ultilities.js"></script>
  </body>
</html>