"use client";
import { useEffect, useState } from "react";
import { useSearchParams } from "next/navigation";
import styles from "@/styles/search.module.css";
// Components
import Footer from "@/components/Footer";
import Navbar from "@/components/Navbar";
import Popular from "@/components/Popular";
import Trending from "@/components/Trending";
import SearchResults from "@/components/SearchResults";
import Country from "@/components/filter/Country";
import Filter from "@/components/filter/Filter";
import Status from "@/components/filter/Status";
import Format from "@/components/filter/Format";
import Season from "@/components/filter/Season";
import Year from "@/components/filter/Year";
import Genre from "@/components/filter/Genre";
import Input from "@/components/filter/Input";

export default function Search() {
  const searchParams = useSearchParams();
  const [query, setQuery] = useState(
    searchParams.get("query") ? searchParams.get("query") : null
  );
  const [searched, setSearched] = useState<any[]>([]);
  const [trending, setTrending] = useState([]);
  const [popular, setPopular] = useState([]);

  // Open/Close Management
  const [isGenreOpen, setIsGenreOpen] = useState(false);
  const [isYearOpen, setIsYearOpen] = useState(false);
  const [isSeasonOpen, setIsSeasonOpen] = useState(false);
  const [isFormatOpen, setIsFormatOpen] = useState(false);
  const [isStatusOpen, setIsStatusOpen] = useState(false);
  const [isCountryOpen, setIsCountryOpen] = useState(false);
  // Value Management
  const [genre, setGenre] = useState<string[]>([]);
  const [year, setYear] = useState<string[]>([]);
  const [season, setSeason] = useState<string[]>([]);
  const [format, setFormat] = useState<string[]>([]);
  const [status, setStatus] = useState<string[]>([]);
  const [country, setCountry] = useState<string[]>([]);

  const getSearched = async () => {
    const request = await fetch(`/api/search`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        query,
        genre,
        year,
        season,
        format,
        status,
        origin: country,
        perPage: 60,
      }),
    });
    const response = await request.json();

    if (request.status === 200) {
      setSearched(response);
    } else {
      setSearched([]);
      console.log(response);
    }
  };

  const getTrending = async () => {
    try {
      const request = await fetch(`/api/trending`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ page: 1, perPage: 7 }),
      });
      const response = await request.json();

      if (request.status === 200) {
        setTrending(response);
      } else {
        console.log(response);
      }
    } catch (error) {
      console.log(error);
    }
  };

  const getPopular = async () => {
    try {
      const request = await fetch(`/api/popular`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ page: 1, perPage: 7 }),
      });
      const response = await request.json();

      if (request.status === 200) {
        setPopular(response);
      } else {
        console.log(response);
      }
    } catch (error) {
      console.log(error);
    }
  };

  const insertValuesIntoState = (value: string, setValue: any) => {
    setValue((prevValue: string[]) => {
      if (prevValue.includes(value)) {
        return prevValue.filter((item) => item !== value);
      } else {
        return [...prevValue, value];
      }
    });
  };

  useEffect(() => {
    getTrending();
    getPopular();
  }, []);

  useEffect(() => {
    if (searchParams.get("query")) {
      getSearched();
    }
  }, []);

  return (
    <>
      <Navbar />
      <section className="container">
        <form
          onSubmit={(e) => {
            e.preventDefault();
          }}
          className={styles.filter}
        >
          <Input query={query} setQuery={setQuery} />
          <Genre
            genre={genre}
            setGenre={setGenre}
            isGenreOpen={isGenreOpen}
            insertValuesIntoState={insertValuesIntoState}
            setIsGenreOpen={setIsGenreOpen}
            setIsYearOpen={setIsYearOpen}
            setIsSeasonOpen={setIsSeasonOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsCountryOpen={setIsCountryOpen}
            setIsStatusOpen={setIsStatusOpen}
          />
          <Year
            year={year}
            setYear={setYear}
            isYearOpen={isYearOpen}
            setIsYearOpen={setIsYearOpen}
            setIsGenreOpen={setIsGenreOpen}
            setIsSeasonOpen={setIsSeasonOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsCountryOpen={setIsCountryOpen}
            setIsStatusOpen={setIsStatusOpen}
            insertValuesIntoState={insertValuesIntoState}
          />
          <Season
            season={season}
            setSeason={setSeason}
            isSeasonOpen={isSeasonOpen}
            setIsSeasonOpen={setIsSeasonOpen}
            setIsGenreOpen={setIsGenreOpen}
            setIsYearOpen={setIsYearOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsCountryOpen={setIsCountryOpen}
            setIsStatusOpen={setIsStatusOpen}
            insertValuesIntoState={insertValuesIntoState}
          />
          <Format
            format={format}
            setFormat={setFormat}
            isFormatOpen={isFormatOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsGenreOpen={setIsGenreOpen}
            setIsYearOpen={setIsYearOpen}
            setIsSeasonOpen={setIsSeasonOpen}
            setIsCountryOpen={setIsCountryOpen}
            setIsStatusOpen={setIsStatusOpen}
            insertValuesIntoState={insertValuesIntoState}
          />
          <Status
            status={status}
            setStatus={setStatus}
            isStatusOpen={isStatusOpen}
            insertValuesIntoState={insertValuesIntoState}
            setIsCountryOpen={setIsCountryOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsStatusOpen={setIsStatusOpen}
            setIsGenreOpen={setIsGenreOpen}
            setIsYearOpen={setIsYearOpen}
            setIsSeasonOpen={setIsSeasonOpen}
          />
          <Country
            country={country}
            setCountry={setCountry}
            insertValuesIntoState={insertValuesIntoState}
            isCountryOpen={isCountryOpen}
            setIsCountryOpen={setIsCountryOpen}
            setIsYearOpen={setIsYearOpen}
            setIsGenreOpen={setIsGenreOpen}
            setIsSeasonOpen={setIsSeasonOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsStatusOpen={setIsStatusOpen}
          />
          <Filter
            getSearched={getSearched}
            setIsCountryOpen={setIsCountryOpen}
            setIsYearOpen={setIsYearOpen}
            setIsGenreOpen={setIsGenreOpen}
            setIsSeasonOpen={setIsSeasonOpen}
            setIsFormatOpen={setIsFormatOpen}
            setIsStatusOpen={setIsStatusOpen}
          />
        </form>

        {searched.length > 0 ? (
          <SearchResults query={query} searched={searched} />
        ) : (
          <section className={styles.billboard_Wrapper}>
            {trending.length > 0 && <Trending trending={trending} />}
            {popular.length > 0 && <Popular popular={popular} />}
          </section>
        )}
      </section>
      <Footer />
    </>
  );
}
